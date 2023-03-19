package com.had0uken.english_education.test;

import com.had0uken.english_education.enums.Level;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.util.*;

public class Test {
    public static void main(String[] args) {
        String past = "was/were";
        String [] arr = past.split("/");
        String answer = "waes";
        boolean flag =
        Arrays.asList(arr).contains(answer);
        System.out.println(flag);
    }
}