package com.had0uken.english_education.test;

import com.had0uken.english_education.controller.AuthenticationRegistrationController;
import com.had0uken.english_education.enums.Level;
import org.springframework.context.annotation.Configuration;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.Path;
import java.nio.file.Paths;


public class DaoClass {


    public static void main(String[] args) throws URISyntaxException {
        String a = "A2";


        Level level = Level.valueOf(a);



        System.out.println(level.getLevel());
    }
}

