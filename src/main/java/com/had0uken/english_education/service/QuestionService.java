package com.had0uken.english_education.service;

import com.had0uken.english_education.entity.Question;

import java.util.List;

public interface QuestionService {
    List<Question> getAllQuestions();

    List<Question> getTextQuestions();
    void save(Question question);
}
