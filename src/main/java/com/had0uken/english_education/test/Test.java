package com.had0uken.english_education.test;

import com.had0uken.english_education.enums.Level;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.util.*;

public class Test {
    public static void main(String[] args) {
        String s = "D://folder";
        copyAll(s);
    }

    public static void copyAll (String s){
        File source = new File("src/main/webapp/resources");
        File dest = new File(s);
        File file = new File(s);
        if(!file.exists()){
            file.mkdir();
            try {
                FileUtils.copyDirectory(source, dest);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}