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
@RequestMapping("/listening")
public class ListeningController {
    @Autowired
    private QuestionService questionService;
    @Autowired
    private TaskService taskService;
    private List<Question> questions;
    @Autowired
    private UserService userService;
    @Autowired
    private PointCounter pointCounter;
    @Autowired
    private HeaderCreator headerCreator;
    private int index = 0;
    private int totalPoints = 0;
    private int userPoints = 0;
    private Task currentTask = null;
    private List<Task> ListeningTasks;
    private final String separator;

    public ListeningController() {
        this.separator= File.separator;
    }

    @RequestMapping("/")
    public ModelAndView readingAndListenng(Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);
        modelAndView.setViewName("listening-views" + separator + "listening-practice-test");
        return modelAndView;
    }

    @RequestMapping("/tasks")
    public ModelAndView tasks(@RequestParam("level") String levelAtt, Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);
        Level level =
                Arrays.stream(Level.values()).filter(e -> e.toString().equals(levelAtt)).findFirst().get();
        ListeningTasks = taskService.findByParams(level, "Listening", "audio");
        modelAndView.addObject("tasksAtt", ListeningTasks);

        modelAndView.setViewName("listening-views" + separator + "listening-practice-tests-this-level");
        return modelAndView;
    }

    @RequestMapping("/showTask")
    public ModelAndView showTask(@RequestParam("taskId") int taskId, Authentication authentication) {
        ModelAndView modelAndView = headerCreator.getModelWithHeader(authentication);
        currentTask = taskService.findById(taskId);
        if (questions == null) questions = questionService.getListOfQuestions(taskId);
        if (index < questions.size()) {
            modelAndView.addObject("curQuestionAtt", questions.get(index));
            modelAndView.addObject("amountAtt", questions.size());
            modelAndView.addObject("indexAtt", index);
            modelAndView.addObject("curTaskAtt", currentTask);
            modelAndView.addObject("tasksAtt", ListeningTasks);
            modelAndView.setViewName("listening-views" + separator + "listening-task-view");
        } else {
            modelAndView.setViewName("redirect:" + separator + "listening" + separator + "showResult");
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
        modelAndView.setViewName("redirect:" + separator + "listening" + separator + "showTask?taskId=" + currentTask.getId());
        return modelAndView;
    }

    @RequestMapping("/showResult")
    public ModelAndView showResult(Authentication authentication) {
        ModelAndView modelAndView= headerCreator.getModelWithHeader(authentication);
        modelAndView.addObject("totalPointsAtt", totalPoints);
        modelAndView.addObject("userPointsAtt", userPoints);
        double result;
        if((double)userPoints/totalPoints<0.3)result=1;
        else if((double)userPoints/totalPoints>0.7) result=3;
        else result=2;
        modelAndView.addObject("resultAtt", result);
        modelAndView.addObject("tasksAtt", ListeningTasks);
        index = 0;
        totalPoints = 0;
        userPoints = 0;
        currentTask = null;
        questions = null;
        ListeningTasks.clear();

        modelAndView.setViewName("listening-views" + separator + "show-listening-test-result");
        return modelAndView;
    }


}
