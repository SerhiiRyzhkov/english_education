package com.had0uken.english_education.entity;

import org.junit.Test;

import static org.junit.Assert.*;

public class WordTest {

    private final Word word = new Word("test", "noun", "a trial or experiment", "Example 1", "Example 2", "Example 3");

    @Test
    public void testWordProperties() {
        assertEquals("test", word.getWord());
        assertEquals("noun", word.getParts());
        assertEquals("a trial or experiment", word.getDefinition());
        assertEquals("Example 1", word.getExample1());
        assertEquals("Example 2", word.getExample2());
        assertEquals("Example 3", word.getExample3());
        assertEquals("Green", word.getColor()); // default color for noun
    }

    @Test
    public void testSetColor() {
        word.setColor("Red");
        assertEquals("Red", word.getColor());
    }

    @Test
    public void testToString() {
        String expected = "Word{id=0, word='test', definition='a trial or experiment'}";
        assertEquals(expected, word.toString());
    }
}