package com.had0uken.english_education.counters;

import com.had0uken.english_education.entity.Question;
import org.junit.Test;

import static org.junit.Assert.*;

public class PointCounterImplTest {
    @Test
    public void testGetPoints() {
        PointCounter pointCounter = new PointCounterImpl();
        Question a1Question = new Question("QuestionA1","Answer1","Answer2",
                "Answer3",1,"A1","Reading","simple",1);
        Question a2Question = new Question("QuestionA1","Answer1","Answer2",
                "Answer3",1,"A2","Reading","simple",1);
        Question b1Question = new Question("QuestionA1","Answer1","Answer2",
                "Answer3",1,"B1","Reading","simple",1);
        Question b2Question = new Question("QuestionA1","Answer1","Answer2",
                "Answer3",1,"B2","Reading","simple",1);
        Question c1Question = new Question("QuestionA1","Answer1","Answer2",
                "Answer3",1,"C1","Reading","simple",1);
        Question c2Question = new Question("QuestionA1","Answer1","Answer2",
                "Answer3",1,"C2","Reading","simple",1);



        assertEquals(1, pointCounter.getPoints(a1Question));
        assertEquals(2, pointCounter.getPoints(a2Question));
        assertEquals(3, pointCounter.getPoints(b1Question));
        assertEquals(5, pointCounter.getPoints(c1Question));
        assertEquals(4, pointCounter.getPoints(b2Question));
        assertEquals(6, pointCounter.getPoints(c2Question));
    }
}