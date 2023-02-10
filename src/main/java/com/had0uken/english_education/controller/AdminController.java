package com.had0uken.english_education.controller;


import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.service.QuestionService;
import com.had0uken.english_education.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.List;

@RequestMapping("/admin")
@Controller
@EnableTransactionManagement

public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private QuestionService questionService;

    @RequestMapping("/adminRef")
    public ModelAndView adminPageRedirection(){
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/admin");
        return model;
    }

    @RequestMapping(value = "/listOfUsers")
    public ModelAndView listOfUsers() {
        ModelAndView model = new ModelAndView();
        List<User> allUsers = userService.getAllUser();
        model.addObject("allUsersAtt", allUsers);
        model.setViewName("admin-views/listOfUsers");

        return model;
    }
    @RequestMapping("/addNewQuestions")
    public ModelAndView addNewQuestions() {
        ModelAndView model = new ModelAndView();
        Question question = new Question();
        model.addObject("questionAtt", question);
        model.setViewName("admin-views/add-questions-view");
        return model;
    }

    @RequestMapping("/saveQuestion")
    public ModelAndView saveNewQuestion(@Valid @ModelAttribute("questionAtt") Question question,
                                        BindingResult bindingResult) {
        ModelAndView model = new ModelAndView();
        if(bindingResult.hasErrors()) {
            model.setViewName("admin-views/add-questions-view");
        }
        else {
            question.setType("text");
            questionService.save(question);
            model.setViewName("redirect:addNewQuestions");
        }
            return model;

    }
    @RequestMapping(value = "/banUser")
    public ModelAndView banUser(@RequestParam("userId") String username) {
        ModelAndView model = new ModelAndView();
        userService.banUser(username);
        model.setViewName("redirect:/admin/listOfUsers");

        return model;
    }

    @RequestMapping(value = "/unBanUser")
    public ModelAndView unBanUser(@RequestParam("userId") String username) {
        ModelAndView model = new ModelAndView();
        userService.unBanUser(username);
        model.setViewName("redirect:/admin/listOfUsers");

        return model;
    }



}
