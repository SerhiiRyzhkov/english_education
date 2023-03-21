package com.had0uken.english_education.service;

import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.enums.Level;

import java.util.List;

public interface QuestionService {
    List<Question> getAllQuestions();

    List<Question> getListOfQuestions(String format);


    public List<Question> getListOfQuestions(Level level, String type, String format, int sourceId);


    public List<Question> getListOfQuestions(int sourceId);

    void save(Question question);
}
