package com.had0uken.english_education.controller;


import com.had0uken.english_education.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.persistence.Entity;
import javax.transaction.Transactional;
@EnableTransactionManagement
@Controller
public class AuthenticationController {



    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String loginPage() {
        return "login";
    }

    @RequestMapping("/homeReff")
    public ModelAndView adminPageRedirection(Authentication authentication){
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:/home");
        return model;

    }

    @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
    public ModelAndView welcomePage(Authentication authentication) {
        ModelAndView model = new ModelAndView();
        model.addObject("currentUserAtt",authentication.getName());
        model.addObject("message", "This is home page. It is accessible to all roles.");
        model.setViewName("home");
        return model;

    }


    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView adminPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("message", "This page is accessible for Admin role !");
        model.setViewName("admin");

        return model;

    }

    @RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
    public ModelAndView accessDeniedPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("message", "You are not authorized to view this page.");
        model.setViewName("accessDenied");

        return model;

    }
}
