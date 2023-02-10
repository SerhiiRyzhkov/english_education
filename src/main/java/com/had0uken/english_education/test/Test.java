package com.had0uken.english_education.test;

import com.had0uken.english_education.enums.Level;

import java.util.*;

public class Test {
    public static void main(String[] args) {
        String param = "A1";
        Level array [] = Level.values();

        Level level=
        Arrays.stream(array).filter(e->e.toString().equals(param)).findFirst().get();


        System.out.println("Here");
        System.out.println(level.getDescription());
    }
}