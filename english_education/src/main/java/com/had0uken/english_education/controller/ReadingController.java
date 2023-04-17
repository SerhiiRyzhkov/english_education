package com.had0uken.english_education.controller;


import com.had0uken.english_education.functional.HeaderCreator;
import com.had0uken.english_education.functional.PointCounter;
import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.entity.Task;
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

import java.io.File;
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

    @Autowired
    private UserService userService;

    @Autowired
    private PointCounter pointCounter;

    @Autowired
    private HeaderCreator headerCreator;


    private List<Question> questions;

    private List<Task> ReadingTasks;

    private int index = 0;

    private int totalPoints = 0;

    private int userPoints = 0;
    private Task currentTask = null;

    private final String separator;


    public ReadingController() {
        this.separator= File.separator;
    }

    @RequestMapping("/")
    public ModelAndView reading(Authentication authentication) {
        ModelAndView modelAndView =headerCreator.getModelWithHeader(authentication);

        modelAndView.setViewName("reading-views" + separator + "reading-practice-test");
        return modelAndView;
    }



    @RequestMapping("/tasks")
    public ModelAndView tasks(@RequestParam("level") String levelAtt,Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);

        Level level =
                Arrays.stream(Level.values()).filter(e -> e.toString().equals(levelAtt)).findFirst().get();
        ReadingTasks = taskService.findByParams(level, "Reading", "reading");
        modelAndView.addObject("tasksAtt", ReadingTasks);
        questions=null;
        modelAndView.setViewName("reading-views" + separator + "reading-practice-tests-this-level");
        return modelAndView;
    }


    @RequestMapping("/showTask")
    public ModelAndView showTask(@RequestParam("taskId") int taskId, Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);
        Task task = taskService.findById(taskId);
        currentTask = task;
        if (questions == null) questions = questionService.getListOfQuestions(taskId);

        if (index < questions.size()) {
            modelAndView.addObject("curQuestionAtt", questions.get(index));
            modelAndView.addObject("amountAtt", questions.size());
            modelAndView.addObject("indexAtt", index);
            modelAndView.addObject("curTaskAtt", task);

            modelAndView.setViewName(getTaskViewName(task));
        } else {
            modelAndView.setViewName("redirect:" + separator + "reading" + separator + "showResult");
        }
        return modelAndView;
    }


    @RequestMapping("/receive")
    public ModelAndView receive(@ModelAttribute("choiceAtt") Integer choice, Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);
        Question question = questions.get(index);


        totalPoints += pointCounter.getPoints(question);

        if (choice == question.getCorrectAnswer()) {
            userPoints += pointCounter.getPoints(question);
            userService.increasePoints(authentication.getName(), pointCounter.getPoints(question));
        }

        index++;
        modelAndView.setViewName("redirect:" + separator + "reading" + separator + "showTask?taskId=" + currentTask.getId());
        return modelAndView;
    }

    @RequestMapping("/showResult")
    public ModelAndView showResult(Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);

        modelAndView.addObject("totalPointsAtt", totalPoints);
        modelAndView.addObject("userPointsAtt", userPoints);
        double result;
        if((double)userPoints/totalPoints<0.3)result=1;
        else if((double)userPoints/totalPoints>0.3) result=3;
        else result=2;
        modelAndView.addObject("resultAtt", result);
        modelAndView.addObject("tasksAtt", ReadingTasks);
        index = 0;
        totalPoints = 0;
        userPoints = 0;
        currentTask = null;
        questions = null;
        ReadingTasks.clear();

        modelAndView.setViewName("reading-views" + separator + "show-reading-test-result");
        return modelAndView;
    }


    private String getTaskViewName(Task task) {
             return separator +
                "reading-views" +
                separator +
                task.getLevel().toLowerCase() +
                separator +
                task.getFormat() +
                "." +
                task.getLevel().toLowerCase() +
                "." +
                task.getId() +
                separator +
                task.getName();
    }
}
