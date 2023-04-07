package com.had0uken.english_education.controller;

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

    @Autowired
    private UserService userService;

    @RequestMapping("/")
    public ModelAndView showStartView(Authentication authentication) {
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
        modelAndView.setViewName("speaking-views\\\\start-view");
        return modelAndView;
    }

    @RequestMapping("/allTasks")
    public ModelAndView showVerbs(Authentication authentication) {
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

        List<Task> taskList = taskService.findByParams("Speaking", "no_test");

        modelAndView.addObject("allTasks", taskList);
        modelAndView.setViewName("speaking-views\\\\all-tasks-view");
        return modelAndView;
    }

    @RequestMapping("/showTask")
    public ModelAndView showTask(@RequestParam("taskId") Integer id, Authentication authentication) {
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
        Task task = taskService.findById(id);
        List<Question> questions = questionService.getListOfQuestions(id);

        modelAndView.addObject("taskAtt", task);
        modelAndView.addObject("questionsAtt", questions);

        modelAndView.setViewName("speaking-views\\\\show-task-view");
        return modelAndView;
    }

    @RequestMapping("/randomTaks")
    public ModelAndView randomTaks(Authentication authentication) {
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
        Random random = new Random();
        List<Task> taskList = taskService.findByParams("Speaking", "no_test");
        int id = random.nextInt(taskList.size());
        Task task = taskList.get(id);
        List<Question> questions = questionService.getListOfQuestions(task.getId());
        modelAndView.addObject("taskAtt", task);
        modelAndView.addObject("questionsAtt", questions);
        modelAndView.setViewName("speaking-views\\\\show-task-view");
        return modelAndView;
    }

}
