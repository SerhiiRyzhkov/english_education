package com.had0uken.english_education.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;

@Controller
public class RedirectController {

    private final String separator;

    public RedirectController() {
        this.separator= File.separator;
    }

    @RequestMapping("/adminRef")
    public ModelAndView adminPageRedirection() {
        ModelAndView model = new ModelAndView();
        model.setViewName("redirect:"+separator+ "admin");
        return model;
    }


    @RequestMapping("/homeReff")
    public ModelAndView homePageRedirection() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:"+separator+ "home");
        return modelAndView;

    }

    @RequestMapping("/listeningReff")
    public ModelAndView listeningPageRedirection() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:"+separator+ "listening/");
        return modelAndView;

    }

    @RequestMapping("/readingReff")
    public ModelAndView readingPageRedirection() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:"+separator+ "reading/");
        return modelAndView;

    }


    @RequestMapping("/grammarReff")
    public ModelAndView grammarPageRedirection() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:" + separator + "GV" + separator + "Grammar");
        return modelAndView;

    }



    @RequestMapping("/vocabularyReff")
    public ModelAndView vocabularyPageRedirection() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:" + separator + "GV" + separator + "Vocabulary");
        return modelAndView;

    }
}
