package com.had0uken.english_education.test;

import com.had0uken.english_education.enums.Level;
import org.apache.commons.io.FileUtils;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;
import java.time.LocalDate;
import java.util.*;

public class Test {
    public static void main(String[] args) {
        Timestamp timestamp = new Timestamp(new Date().getTime());
        System.out.println(timestamp.toString().substring(0,timestamp.toString().lastIndexOf(".")));
        System.out.println(timestamp.getYear());
        System.out.println(timestamp);

         }
}