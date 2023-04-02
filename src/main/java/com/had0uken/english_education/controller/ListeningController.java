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
@RequestMapping("/listening")
public class ListeningController {
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
    @Autowired
    private LevelCounter levelCounter;


    //starting index of question from currentQuestions list
    private int index = 0;
    //Max value of possible points of a test
    private int totalPoints = 0;
    //value of points got by user during a test
    private int userPoints = 0;
    private Task currentTask = null;

    private List<Task> ListeningTasks;

    @RequestMapping("/")
    public ModelAndView readingAndListenng(Authentication authentication) {
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
        modelAndView.setViewName("listening-views\\\\listening-practice-test");
        return modelAndView;
    }

    @RequestMapping("/tasks")
    public ModelAndView tasks(@RequestParam("level") String levelAtt, Authentication authentication) {
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
        ListeningTasks = taskService.findByParams(level, "Listening", "audio");
        modelAndView.addObject("tasksAtt", ListeningTasks);

        modelAndView.setViewName("listening-views\\\\listening-practice-tests-this-level");
        return modelAndView;
    }

    @RequestMapping("/showTask")
    public ModelAndView showTask(@RequestParam("taskId") int taskId, Authentication authentication) {
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
        Task task = taskService.findById(taskId);

        currentTask = task;
        if (questions == null) questions = questionService.getListOfQuestions(taskId);
        if (index < questions.size()) {
            modelAndView.addObject("curQuestionAtt", questions.get(index));
            modelAndView.addObject("amountAtt", questions.size());
            modelAndView.addObject("indexAtt", index);
            modelAndView.addObject("curTaskAtt", currentTask);
            modelAndView.addObject("tasksAtt", ListeningTasks);
            modelAndView.setViewName("listening-views\\\\listening-task-view2");
        } else {
            modelAndView.setViewName("redirect:/listening/showResult");
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
        modelAndView.setViewName("redirect:/listening/showTask?taskId=" + currentTask.getId());
        return modelAndView;
    }

    @RequestMapping("/showResult")
    public ModelAndView showResult() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("totalPointsAtt", totalPoints);
        modelAndView.addObject("userPointsAtt", userPoints);
        index = 0;
        totalPoints = 0;
        userPoints = 0;
        currentTask = null;
        questions = null;

        modelAndView.setViewName("listening-views\\\\show-listening-test-result");
        return modelAndView;
    }


}
