package com.had0uken.english_education.service;


import com.had0uken.english_education.dao.QuestionDao;
import com.had0uken.english_education.entity.Question;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;



@ExtendWith(MockitoExtension.class)
public class QuestionServiceImplTest {
    @Mock
    private QuestionDao questionDao;

    @InjectMocks
    private QuestionServiceImpl questionService;

    @Test
    public void testFindAllQuestions() {

        Question question1 = new Question("I promise that I will be here when you come back, but I'm afraid everyone else .............. by then.",
        "are leaving","were leaving","will have left",3,"B1","Grammar","simple",0);
        Question question2 = new Question("Her voice had become ............... from shouting. Her last words were almost inaudible.",
                "reserved","hoarse","eager",2,"B2","Vocabulary","simple",0);

        List<Question> questions = new ArrayList<>();
        questions.add(question1);
        questions.add(question2);

        when(questionDao.findALL()).thenReturn(questions);

        List<Question> result = questionService.getAllQuestions();

        assertEquals(questions,result);
    }

    @Test
    public void testSaveQuestion() {
        Question question = new Question("I promise that I will be here when you come back, but I'm afraid everyone else .............. by then.",
                "are leaving","were leaving","will have left",3,"B1","Grammar","simple",0);
        questionService.save(question);

        verify(questionDao, times(1)).save(question);
    }
}