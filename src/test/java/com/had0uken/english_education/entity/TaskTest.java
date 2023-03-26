package com.had0uken.english_education.entity;

import org.junit.Test;


import static org.junit.Assert.*;

public class TaskTest {
    private final Task task = new Task("reading-c1-16", "Four book summaries", "C1", "Reading", "reading");;




    @Test
    public void testTaskProperties() {
        assertNotNull(task.getId());
        assertEquals("reading-c1-16", task.getName());
        assertEquals("Four book summaries", task.getTitle());
        assertEquals("C1", task.getLevel());
        assertEquals("Reading", task.getType());
        assertEquals("reading", task.getFormat());
    }

    @Test
    public void testToString() {

        String expected = "Task{id=0, name='reading-c1-16', title='Four book summaries', level='C1', type='Reading', format='reading'}";
        assertEquals(expected, task.toString());
    }
}