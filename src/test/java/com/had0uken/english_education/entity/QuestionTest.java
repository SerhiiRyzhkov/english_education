package com.had0uken.english_education.entity;

import org.junit.Test;

import static org.junit.Assert.*;

public class QuestionTest {

    @Test
    public void testDefaultConstructor() {
        Question question = new Question();
        assertNull(question.getQuestion());
        assertNull(question.getAnswer1());
        assertNull(question.getAnswer2());
        assertNull(question.getAnswer3());
        assertEquals(0, question.getCorrectAnswer());
        assertNull(question.getLevel());
        assertNull(question.getType());
        assertNull(question.getFormat());
        assertEquals(0, question.getSourceId());
    }

    @Test
    public void testParameterizedConstructor() {
        String questionText = "I promise that I will be here when you come back, but I'm afraid everyone else .............. by then.";
        String answer1 = "are leaving";
        String answer2 = "were leaving";
        String answer3 = "will have left";
        int correctAnswer = 3;
        String level = "B1";
        String type = "Grammar";
        String format = "simple";
        int sourceId = 0;

        Question question = new Question(questionText, answer1, answer2, answer3, correctAnswer, level, type, format, sourceId);

        assertEquals(questionText, question.getQuestion());
        assertEquals(answer1, question.getAnswer1());
        assertEquals(answer2, question.getAnswer2());
        assertEquals(answer3, question.getAnswer3());
        assertEquals(correctAnswer, question.getCorrectAnswer());
        assertEquals(level, question.getLevel());
        assertEquals(type, question.getType());
        assertEquals(format, question.getFormat());
        assertEquals(sourceId, question.getSourceId());
    }

    @Test
    public void testGettersAndSetters() {
        Question question = new Question();

        String questionText = "Do you have any idea what she .............. at this time tomorrow?";
        question.setQuestion(questionText);
        assertEquals(questionText, question.getQuestion());

        String answer1 = "was doing";
        question.setAnswer1(answer1);
        assertEquals(answer1, question.getAnswer1());

        String answer2 = "will be doing";
        question.setAnswer2(answer2);
        assertEquals(answer2, question.getAnswer2());

        String answer3 = "has been doing";
        question.setAnswer3(answer3);
        assertEquals(answer3, question.getAnswer3());

        int correctAnswer = 2;
        question.setCorrectAnswer(correctAnswer);
        assertEquals(correctAnswer, question.getCorrectAnswer());

        String level = "B1";
        question.setLevel(level);
        assertEquals(level, question.getLevel());

        String type = "Grammar";
        question.setType(type);
        assertEquals(type, question.getType());

        String format = "simple";
        question.setFormat(format);
        assertEquals(format, question.getFormat());

        int sourceId = 0;
        question.setSourceId(sourceId);
        assertEquals(sourceId, question.getSourceId());
    }

    @Test
    public void testToString() {
        String questionText = "Everywhere they ............... for water they struck oil.";
        String answer1 = "sank";
        String answer2 = "dug";
        String answer3 = "dropped";
        int correctAnswer = 2;
        String level = "A2";
        String type = "Vocabulary";
        String format = "simple";
        int sourceId = 0;

        Question question = new Question(questionText, answer1, answer2, answer3, correctAnswer, level, type, format, sourceId);

        String expected = "Question{id=0, question='Everywhere they ............... for water they struck oil.', answer1='sank', answer2='dug', answer3='dropped', correctAnswer=2, level='A2', type='Vocabulary', format='simple', source_id='0'}";
        String actual = question.toString();

    }
}