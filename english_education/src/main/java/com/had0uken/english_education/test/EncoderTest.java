package com.had0uken.english_education.test;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.util.Random;

public class EncoderTest {
    public static void main(String[] args) {


        BCryptPasswordEncoder bCryptPasswordEncoder =
                new BCryptPasswordEncoder
                        (BCryptPasswordEncoder.
                                BCryptVersion.$2A, 5);
        Random random = new Random();


        String name = "Dayana";
        String surname = "Yastremskaya";
        String email= name.toLowerCase();

        StringBuilder sb = new StringBuilder();
        sb.append("insert into my_db.users values('"+email+"@ukr.net','"+name+"','"+surname+"','"+
                bCryptPasswordEncoder.encode(email)+"',1,'+380663790304',null,"+random.nextInt(100)+");");
        System.out.println(sb);


    }
}
