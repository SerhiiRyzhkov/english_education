package com.had0uken.english_education.controller;


import com.had0uken.english_education.counters.LevelCounter;
import com.had0uken.english_education.counters.PointCounter;
import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.entity.Task;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.enums.Level;
import com.had0uken.english_education.service.QuestionService;
import com.had0uken.english_education.service.TaskService;
import com.had0uken.english_education.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Arrays;
import java.util.List;

@EnableTransactionManagement
@Controller
@RequestMapping("/reading")
public class ReadingController {

    @Autowired
    private QuestionService questionService;

    @Autowired
    private TaskService taskService;

    private List<Question> questions;

    @Autowired
    private UserService userService;

    //Counter of points of a test
    @Autowired
    private PointCounter pointCounter;
    //Counter of english level according to a test

    private List<Task> ReadingTasks;


    //starting index of question from currentQuestions list
    private int index = 0;
    //Max value of possible points of a test
    private int totalPoints = 0;
    //value of points got by user during a test
    private int userPoints = 0;
    private Task currentTask = null;

    @RequestMapping("/")
    public ModelAndView reading(Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.getUser(authentication.getName());
        if(user.getLevel()!=null)
        {
            Level level = Level.valueOf(user.getLevel());
            modelAndView.addObject("userLevelAtt", level.getLevel());
        }
        else modelAndView.addObject("userLevelAtt","");
        modelAndView.addObject("currentUserEntityAtt", user);
        modelAndView.addObject("currentUserEmail", authentication.getName());
        modelAndView.setViewName("reading-views\\\\reading-practice-test");
        return modelAndView;
    }



    @RequestMapping("/tasks")
    public ModelAndView tasks(@RequestParam("level") String levelAtt,Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.getUser(authentication.getName());
        if(user.getLevel()!=null)
        {
            Level level = Level.valueOf(user.getLevel());
            modelAndView.addObject("userLevelAtt", level.getLevel());
        }
        else modelAndView.addObject("userLevelAtt","");
        modelAndView.addObject("currentUserEntityAtt", user);
        modelAndView.addObject("currentUserEmail", authentication.getName());

        Level level =
                Arrays.stream(Level.values()).filter(e -> e.toString().equals(levelAtt)).findFirst().get();
        ReadingTasks = taskService.findByParams(level, "Reading", "reading");
        modelAndView.addObject("tasksAtt", ReadingTasks);

        modelAndView.setViewName("reading-views\\\\reading-practice-tests-this-level");
        return modelAndView;
    }


    @RequestMapping("/showTask")
    public ModelAndView showTask(@RequestParam("taskId") int taskId) {
        ModelAndView modelAndView = new ModelAndView();
        Task task = taskService.findById(taskId);
        currentTask = task;
        if (questions == null) questions = questionService.getListOfQuestions(taskId);

        if (index < questions.size()) {
            modelAndView.addObject("curQuestionAtt", questions.get(index));
            modelAndView.addObject("amountAtt", questions.size());
            modelAndView.addObject("indexAtt", index);
            System.out.println("here!!11" + getTaskViewName(task));
            modelAndView.setViewName(getTaskViewName(task));
        } else {
            modelAndView.setViewName("redirect:/reading/showResult");
        }
        return modelAndView;
    }


    @RequestMapping("/receive")
    public ModelAndView receive(@ModelAttribute("choiceAtt") Integer choice, Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView();

        Question question = questions.get(index);


        totalPoints += pointCounter.getPoints(question);

        if (choice == question.getCorrectAnswer()) {
            userPoints += pointCounter.getPoints(question);
            userService.increasePoints(authentication.getName(), pointCounter.getPoints(question));
        }

        index++;
        modelAndView.setViewName("redirect:/reading/showTask?taskId=" + currentTask.getId());
        return modelAndView;
    }

    @RequestMapping("/showResult")
    public ModelAndView showResult(Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.getUser(authentication.getName());
        if(user.getLevel()!=null)
        {
            Level level = Level.valueOf(user.getLevel());
            modelAndView.addObject("userLevelAtt", level.getLevel());
        }
        else modelAndView.addObject("userLevelAtt","");
        modelAndView.addObject("currentUserEntityAtt", user);
        modelAndView.addObject("currentUserEmail", authentication.getName());
        modelAndView.addObject("totalPointsAtt", totalPoints);
        modelAndView.addObject("userPointsAtt", userPoints);
        double result;
        if((double)userPoints/totalPoints<0.3)result=1;
        else if(userPoints/totalPoints>0.3) result=3;
        else result=2;
        modelAndView.addObject("resultAtt", result);
        modelAndView.addObject("tasksAtt", ReadingTasks);
        index = 0;
        totalPoints = 0;
        userPoints = 0;
        currentTask = null;
        questions = null;
        ReadingTasks.clear();

        modelAndView.setViewName("reading-views\\\\show-reading-test-result");
        return modelAndView;
    }


    private String getTaskViewName(Task task) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("\\\\reading-views\\\\");
        stringBuilder.append(task.getLevel().toLowerCase());
        stringBuilder.append("\\\\");
        stringBuilder.append(task.getFormat());
        stringBuilder.append(".");
        stringBuilder.append(task.getLevel().toLowerCase());
        stringBuilder.append(".");
        stringBuilder.append(task.getId());
        stringBuilder.append("\\\\");
        stringBuilder.append(task.getName());
        return stringBuilder.toString();
    }
}
