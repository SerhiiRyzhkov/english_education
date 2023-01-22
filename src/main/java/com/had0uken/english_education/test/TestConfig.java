package com.had0uken.english_education.test;

import com.had0uken.english_education.enums.Level;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import java.util.Arrays;

/*@Configuration
@ComponentScan(basePackages = "com.had0uken.english_education")*/
public class TestConfig {
    public static void main(String[] args) {

        String a = "B1";
        String b = "N1";

        System.out.println(Level.values());

        System.out.println(Arrays.asList(Level.values()).contains(a));

        System.out.println(Arrays.stream(Level.values()).anyMatch(e1->e1.getLevel().equals(a)));
        System.out.println(Arrays.stream(Level.values()).anyMatch(e1->e1.getLevel().equals(b)));


        System.out.println(Arrays.stream(Level.values()).map(Enum::toString).anyMatch(l->l.equals(a)));
        System.out.println(Arrays.stream(Level.values()).map(Enum::toString).anyMatch(l->l.equals(b)));
/*
        Level level = Level.B1;

        System.out.println(level.getLevel().equals(a));
        System.out.println(level.getLevel());
        System.out.println(a);*/
                //collection.stream().anyMatch("f5"::equals)



    }
}
