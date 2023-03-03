package com.had0uken.english_education.test;

import com.had0uken.english_education.controller.AuthenticationRegistrationController;
import org.springframework.context.annotation.Configuration;

import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.Path;
import java.nio.file.Paths;


public class DaoClass {


    public static void main(String[] args) throws URISyntaxException {
        System.out.println("D:\\english_education\\target\\english-1.0-SNAPSHOT\\WEB-INF\\classes");
        File file = new File(new File(AuthenticationRegistrationController.class.getProtectionDomain().getCodeSource().getLocation()
                .toURI()).getPath());
        String p=file.toString();
        p=p.substring(0,p.lastIndexOf("\\"));
        System.out.println(p);
    }
    }


