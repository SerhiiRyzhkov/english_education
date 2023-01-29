package com.had0uken.english_education.test;

import com.had0uken.english_education.enums.Level;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import java.util.Arrays;


public class TestConfig {
    public static void main(String[] args) {
        /*String text="+3806637903043";
        String regex = "[+]\\d{12}";

        System.out.println(text.matches(regex));*/
        String array [] = {
                "admin@ukr.net","andrey@ukr.net","danilo@ukr.net","dayana@ukr.net","elina@ukr.net","ivak@ukr.net","makar@ukr.net","maksim@ukr.net","marta@ukr.net","masha@ukr.net","mykola@ukr.net","olena@ukr.net","polina@ukr.net","tanya@ukr.net","taras@ukr.net","ser@ukr.net","vadim@ukr.net","yulya@ukr.net"

        };
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("insert into my_db.authorities where email='");
        String begin = "insert into my_db.authorities values('";
        String end = "',1);";

        for(String s:array)
            System.out.println(begin+s+end);
    }
}
