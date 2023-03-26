package com.had0uken.english_education.entity;

import org.junit.Test;
import org.junit.jupiter.api.Assertions;



public class UserTest {
    @Test
    public void testEqualsAndHashCode() {
        User user1 = new User("john@ukr.net", "John", "Doe", "password123", true, "+380661234567", "A1", 0, null);
        User user2 = new User("jane@ukr.net", "Jane", "Doe", "password456", true, "+380669876543", "C1", 10, null);


        Assertions.assertNotEquals(user1, user2);
        Assertions.assertNotEquals(user1.hashCode(), user2.hashCode());

        user2.setEmail("john@ukr.net");

        Assertions.assertEquals(user1,user2);
        Assertions.assertEquals(user1.hashCode(),user2.hashCode());


    }

    @Test
    public void testToString() {
        User user = new User("john@ukr.net", "John", "Doe", "password123", true, "+380669876543", "A1", 0, null);
        String expected = "User{email='john@ukr.net', name='John', surname='Doe', password='password123', enabled=true, mobile='+380669876543', level='A1', points='0'}";
        Assertions.assertEquals(expected, user.toString());
    }

}