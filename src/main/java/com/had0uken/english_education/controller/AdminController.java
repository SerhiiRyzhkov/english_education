package com.had0uken.english_education.controller;


import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RequestMapping("/admin")
@Controller
@EnableTransactionManagement

public class AdminController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/listOfUsers")
    public ModelAndView listOfUsers() {
        ModelAndView model = new ModelAndView();
        List<User> allUsers = userService.getAllUser();
        model.addObject("allUsersAtt", allUsers);
        model.setViewName("listOfUsers");

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
