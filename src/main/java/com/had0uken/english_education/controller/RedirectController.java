package com.had0uken.english_education.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class RedirectController {


    @RequestMapping("/homeReff")
    public ModelAndView homePageRedirection() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/home");
        return modelAndView;

    }

    @RequestMapping("/listeningReff")
    public ModelAndView listeningPageRedirection() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/listening/");
        return modelAndView;

    }

    @RequestMapping("/readingReff")
    public ModelAndView readingPageRedirection() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/reading/");
        return modelAndView;

    }


    @RequestMapping("/grammarReff")
    public ModelAndView grammarPageRedirection() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect:/GV/Grammar");
        return modelAndView;

    }



    @RequestMapping("/vocabularyReff")
    public ModelAndView vocabularyPageRedirection() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("redirect: /GV/Vocabulary");
        return modelAndView;

    }
}
