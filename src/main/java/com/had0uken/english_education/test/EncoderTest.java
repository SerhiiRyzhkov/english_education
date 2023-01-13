package com.had0uken.english_education.test;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class EncoderTest {
    public static void main(String[] args) {
        BCryptPasswordEncoder bCryptPasswordEncoder =
                new BCryptPasswordEncoder
                        (BCryptPasswordEncoder.
                                BCryptVersion.$2A, 5);

        String s= "admin";
        System.out.println(bCryptPasswordEncoder.encode(s));
    }
}
