package com.had0uken.english_education.controller;


import com.had0uken.english_education.entity.Role;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.service.RoleService;
import com.had0uken.english_education.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.util.Set;
import java.util.stream.Collectors;

@EnableTransactionManagement
@Controller
public class AuthenticationRegistrationController {

    @Autowired
    private UserService userService;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;



    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView loginPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("login");
        return modelAndView;
    }

    @RequestMapping("/homeReff")
    public ModelAndView adminPageRedirection(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/home");
        return modelAndView;

    }


    @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
    public ModelAndView welcomePage(Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("currentUserAtt",authentication.getName());
        modelAndView.addObject("message", "This is home page. It is accessible to all roles.");
        modelAndView.addObject("ratingAtt",userService.getAllUser().stream().sorted((o1, o2) -> o2.getPoints()-o1.getPoints()).limit(10).collect(Collectors.toList()));
        modelAndView.setViewName("home");
        return modelAndView;

    }


    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView adminPage() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("message", "This page is accessible for Admin role !");
        modelAndView.setViewName("admin");
        return modelAndView;

    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public ModelAndView registration(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("newUserAtt",new User());
        modelAndView.setViewName("registration-view");
        return modelAndView;
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public ModelAndView registration(@Valid @ModelAttribute("newUserAtt") User user
            ,BindingResult bindingResult
            ,@ModelAttribute("pass1Att") String pas1
            ,@ModelAttribute("pass2Att") String pas2)
    {
        ModelAndView modelAndView = new ModelAndView();
        System.out.println("bindingresults======"+bindingResult);
        if(bindingResult.hasErrors()) {
            modelAndView.setViewName("registration-view");
        }
        else {
            if(!pas1.equals(pas2)) {
                modelAndView.setViewName("registration-view");
                modelAndView.addObject("messageAtt","Passwords do not match!");
            }
            else {
                modelAndView.setViewName("succes-registation-view");
                user.setPassword(bCryptPasswordEncoder.encode(pas1));
                user.setEnabled(true);
                userService.saveUser(user);
            }
        }
        return modelAndView;
    }

    @RequestMapping(value = "/accessDenied", method = RequestMethod.GET)
    public ModelAndView accessDeniedPage() {

        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("message", "You are not authorized to view this page.");
        modelAndView.setViewName("accessDenied");

        return modelAndView;

    }
}