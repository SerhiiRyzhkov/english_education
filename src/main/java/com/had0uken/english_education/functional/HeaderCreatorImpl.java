package com.had0uken.english_education.functional;

import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.enums.Level;
import com.had0uken.english_education.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;


@Component
public class HeaderCreatorImpl implements HeaderCreator{

    @Autowired
    private UserService userService;

    @Override
    public ModelAndView getModelWithHeader(Authentication authentication) {
        ModelAndView modelAndView = new ModelAndView();
        User user = userService.getUser(authentication.getName());
        if(user.getLevel()!=null)
        {
            Level level = Level.valueOf(user.getLevel());
            modelAndView.addObject("userLevelAtt", level.getLevel());
        }
        else modelAndView.addObject("userLevelAtt","");
        modelAndView.addObject("currentUserEntityAtt", user);
        modelAndView.addObject("currentUserEmail", authentication.getName());
        return modelAndView;
    }
}
