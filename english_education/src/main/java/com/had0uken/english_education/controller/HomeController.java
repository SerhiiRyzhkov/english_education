package com.had0uken.english_education.controller;

import com.had0uken.english_education.entity.Message;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.functional.HeaderCreator;
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

import java.io.File;
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
    @Autowired
    private HeaderCreator headerCreator;

    private boolean openChat=false;

    private final String separator;

    public HomeController() {
        this.separator= File.separator;
    }

    @RequestMapping(value = {"/", "/home"}, method = RequestMethod.GET)
    public ModelAndView welcomePage(Authentication authentication) {
        ModelAndView modelAndView =headerCreator.getModelWithHeader(authentication);
        User user = userService.getUser(authentication.getName());
        boolean isFirstVisit = user.getLevel() == null;

        Date date = new Date();
        int indexDate = date.getDate() * ((date.getMonth() % 2) + 1);

        List<Message> allMessages = messageService.findALL();
        int amountOfVisibleMessages = 20;
        if (allMessages.size() < amountOfVisibleMessages) amountOfVisibleMessages = allMessages.size();
        List<Message> visibleMessages = messageService.findALL().subList(allMessages.size() - amountOfVisibleMessages, allMessages.size());
        Map<Message, User> messageMap = new LinkedHashMap<>();
        for (Message m : visibleMessages)
            messageMap.put(m, m.getAuthorId());

        modelAndView.addObject("ratingAtt", userService.getAllUser().stream().sorted((o1, o2) -> o2.getPoints() - o1.getPoints()).limit(10).collect(Collectors.toList()));
        modelAndView.addObject("isFirstVisitAtt", isFirstVisit);
        modelAndView.addObject("wordsAtt", wordService.findAll().get(indexDate));
        modelAndView.addObject("mapAtt", messageMap);
        if(openChat)
            modelAndView.addObject("openChatAtt","block");
        else modelAndView.addObject("openChatAtt","none");
        openChat=false;
        modelAndView.setViewName("home-views" + separator + "home");
        return modelAndView;

    }

    @RequestMapping("/chatSendMessage")
    public ModelAndView chatSendMessage(@ModelAttribute("messageAtt") String message, Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView();
        Message newMessage = new Message(userService.getUser(authentication.getName()), message, new Timestamp(new Date().getTime()));
        messageService.save(newMessage);
        openChat=true;
        modelAndView.setViewName("redirect:" + separator + "home");
        return modelAndView;
    }
}
