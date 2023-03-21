package com.had0uken.english_education.controller;

import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.entity.Task;
import com.had0uken.english_education.service.QuestionService;
import com.had0uken.english_education.service.TaskService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Random;

@EnableTransactionManagement
@Controller
@RequestMapping("/speaking")
public class SpeakingController {

    @Autowired
    private TaskService taskService;
    @Autowired
    private QuestionService questionService;

    @RequestMapping("/")
    public ModelAndView showStartView() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("speaking-views\\\\start-view");
        return modelAndView;
    }

    @RequestMapping("/allTasks")
    public ModelAndView showVerbs() {
        ModelAndView modelAndView = new ModelAndView();
        List<Task> taskList = taskService.findByParams("Speaking", "no_test");
        System.out.println("Here!!!333");
        System.out.println(taskList.size());
        System.out.println(taskList);
        modelAndView.addObject("allTasks", taskList);
        modelAndView.setViewName("speaking-views\\\\all-tasks-view");
        return modelAndView;
    }

    @RequestMapping("/showTask")
    public ModelAndView showTask(@RequestParam("taskId") Integer id) {
        ModelAndView modelAndView = new ModelAndView();
        Task task = taskService.findById(id);
        List<Question> questions = questionService.getListOfQuestions(id);

        modelAndView.addObject("taskAtt", task);
        modelAndView.addObject("questionsAtt", questions);

        modelAndView.setViewName("speaking-views\\\\show-task-view");
        return modelAndView;
    }

    @RequestMapping("/randomTaks")
    public ModelAndView randomTaks() {
        ModelAndView modelAndView = new ModelAndView();
        Random random = new Random();
        List<Task> taskList = taskService.findByParams("Speaking", "no_test");
        int id = random.nextInt(taskList.size());
        Task task = taskList.get(id);
        List<Question> questions = questionService.getListOfQuestions(id);
        modelAndView.addObject("taskAtt", task);
        modelAndView.addObject("questionsAtt", questions);
        modelAndView.setViewName("speaking-views\\\\show-task-view");
        return modelAndView;
    }

}
