package com.had0uken.english_education.controller;

import com.had0uken.english_education.entity.Message;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.service.MessageService;
import com.had0uken.english_education.service.UserService;
import com.had0uken.english_education.service.WordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.sql.Timestamp;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;


@EnableTransactionManagement
@Controller
public class HomeController {

    @Autowired
    private UserService userService;
    @Autowired
    private MessageService messageService;

    @Autowired
    private WordService wordService;

    @RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
    public ModelAndView welcomePage(Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("currentUserAtt",authentication.getName());
        modelAndView.addObject("message", "This is home page. It is accessible to all roles.");
        modelAndView.addObject("ratingAtt",userService.getAllUser().stream().sorted((o1, o2) -> o2.getPoints()-o1.getPoints()).limit(10).collect(Collectors.toList()));
        boolean isFirstVisit = userService.getUser(authentication.getName()).getLevel()==null;
        modelAndView.addObject("isFirstVisitAtt",isFirstVisit);
        modelAndView.addObject("wordsAtt", wordService.findAll());
        List<Message> allMessages = messageService.findALL();
        int amountOfVisibleMessages = 20;
        if(allMessages.size()<amountOfVisibleMessages)amountOfVisibleMessages=allMessages.size();
        List<Message> visibleMessages = messageService.findALL().subList(allMessages.size()-amountOfVisibleMessages,allMessages.size());
        Map<Message,User> messageMap = new LinkedHashMap<>();
        for(Message m:visibleMessages)
            messageMap.put(m,m.getAuthorId());
        modelAndView.addObject("mapAtt",messageMap);
        modelAndView.setViewName("home-views/home");
        return modelAndView;

    }

    @RequestMapping("/chatSendMessage")
    public ModelAndView chatSendMessage(@ModelAttribute("messageAtt") String message, Authentication authentication){
        ModelAndView modelAndView = new ModelAndView();
        System.out.println(authentication.getName());
        Message newMessage = new Message(userService.getUser(authentication.getName()),message, new Timestamp(new Date().getTime()));
        messageService.save(newMessage);
        modelAndView.setViewName("redirect:/home");
        return modelAndView;
    }
}
