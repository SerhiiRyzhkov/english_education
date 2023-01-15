package com.had0uken.english_education.test;

import com.had0uken.english_education.service.UserService;
import com.had0uken.english_education.service.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;

@ComponentScan(basePackages = "com.had0uken.english_education")
public class DaoClass {
    //@Autowired
   // private static UserService userService;
    public static void main(String[] args) {
        UserService userService = new UserServiceImpl();
        System.out.println(userService.getAllUser());
    }
}
