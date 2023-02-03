package com.had0uken.english_education.controller;


import com.had0uken.english_education.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@EnableTransactionManagement
@Controller
@RequestMapping("/reading")
public class ReadingTestController {

    @Autowired
    QuestionService questionService;

    @RequestMapping("/")
    public ModelAndView reading(){
        ModelAndView modelAndView = new ModelAndView();

        modelAndView.setViewName("reading-practice-test");


        return modelAndView;
    }

    @RequestMapping("/text1")
    public ModelAndView text1(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("\\reading.a1.1\\reading-a1-1");
        return modelAndView;
    }
}
