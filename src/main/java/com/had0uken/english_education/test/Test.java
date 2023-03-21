package com.had0uken.english_education.test;

import com.had0uken.english_education.enums.Level;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.time.LocalDate;
import java.util.*;

public class Test {
    public static void main(String[] args) {
        Date date = new Date();
        System.out.println(date);
        System.out.println(date.getDate());


        int chislo=21;
        int mounth =11;

        int hash = chislo*((mounth%2)+1);
        System.out.println(hash);


         }
}