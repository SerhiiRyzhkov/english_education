package com.had0uken.english_education.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@EnableTransactionManagement
@Controller
public class UserController {

   /* @Autowired
    private QuestionService questionService;

    @Autowired
    private UserService userService;*/



    @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
    public ModelAndView welcomePage(Authentication authentication) {
        ModelAndView model = new ModelAndView();
        model.addObject("currentUserAtt",authentication.getName());
        model.addObject("message", "This is home page. It is accessible to all roles.");
        model.setViewName("home");
        return model;

    }



}
