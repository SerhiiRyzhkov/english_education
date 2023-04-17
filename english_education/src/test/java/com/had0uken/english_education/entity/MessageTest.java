package com.had0uken.english_education.entity;

import org.junit.Before;
import org.junit.Test;

import java.util.Date;
import java.util.Set;

import static org.junit.Assert.*;

public class MessageTest {
    private Message message1;
    private Message message2;
    private User user1;
    private User user2;
    private Date timestamp1;
    private Date timestamp2;


    /*public User(String email, String name, String surname, String password, Boolean enabled, String mobile,
                String level, int points, Set<Role> roleSet) {*/

    @Before
    public void setUp() {
        user1=new User();
        user1.setName("John");
        timestamp1 = new Date();
        message1 = new Message(user1, "Hello world!", timestamp1);

        user2=new User();
        user2.setName("Bella");
        timestamp2 = new Date();
        message2 = new Message(user2, "Java forever!", timestamp2);

    }

    @Test
    public void testGetters() {
        assertEquals(user1, message1.getAuthorId());
        assertEquals("Hello world!", message1.getMessage());
        assertEquals(timestamp1, message1.getTimestamp());

        assertEquals(user2, message2.getAuthorId());
        assertEquals("Java forever!", message2.getMessage());
        assertEquals(timestamp2, message2.getTimestamp());

    }

    @Test
    public void testSetters() {
        User newUser1 = new User();
        newUser1.setName("John");
        message1.setAuthorId(newUser1);
        assertEquals(newUser1, message1.getAuthorId());

        User newUser2 = new User();
        newUser2.setName("Bella");
        message2.setAuthorId(newUser2);
        assertEquals(newUser2, message2.getAuthorId());

        message1.setMessage("Goodbye world!");
        assertEquals("Goodbye world!", message1.getMessage());

        message2.setMessage("Spring forever!");
        assertEquals("Spring forever!", message2.getMessage());



        Date newTimestamp1 = new Date();
        message1.setTimestamp(newTimestamp1);
        assertEquals(newTimestamp1, message1.getTimestamp());

        Date newTimestamp2 = new Date();
        message2.setTimestamp(newTimestamp2);
        assertEquals(newTimestamp2, message2.getTimestamp());
    }

    @Test
    public void testEqualsAndHashCode() {
        User sameUser1 = new User();
        sameUser1.setName("John");

        User sameUser2 = new User();
        sameUser2.setName("Bella");

        Date sameTimestamp1 = new Date(timestamp1.getTime());
        Message sameMessage1 = new Message(sameUser1, "Hello world!", sameTimestamp1);

        Date sameTimestamp2 = new Date(timestamp2.getTime());
        Message sameMessage2 = new Message(sameUser2, "Java forever!", sameTimestamp2);



        assertEquals(message1, sameMessage1);
        assertEquals(message1.hashCode(), sameMessage1.hashCode());

        assertEquals(message2, sameMessage2);
        assertEquals(message2.hashCode(), sameMessage2.hashCode());

        assertNotEquals(message1,message2);
    }

    @Test
    public void testToString() {
        String expected1 = "MessagesEntity{id=0, user='User{email='null', name='John', surname='null', password='null', enabled=null, mobile='null', level='null', points='0'}', message='Hello world!', timestamp='" + timestamp1 + "'}";
        assertEquals(expected1, message1.toString());

        String expected2 = "MessagesEntity{id=0, user='User{email='null', name='Bella', surname='null', password='null', enabled=null, mobile='null', level='null', points='0'}', message='Java forever!', timestamp='" + timestamp2 + "'}";
        assertEquals(expected2, message2.toString());
    }

}