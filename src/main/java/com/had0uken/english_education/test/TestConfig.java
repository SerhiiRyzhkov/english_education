package com.had0uken.english_education.test;

import com.had0uken.english_education.enums.Level;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

/*@Configuration
@ComponentScan(basePackages = "com.had0uken.english_education")*/
public class TestConfig {
    public static void main(String[] args) {
        Level level = Level.A2;

        System.out.println(level);
    }
}
