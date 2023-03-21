package com.had0uken.english_education.dao;

import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.enums.Level;

import java.util.List;

public interface QuestionDao extends EntityDao<Question> {
    public List<Question> getListOfQuestions(String format);

    public List<Question> getListOfQuestions(Level level, String type, String format, int sourceId);

    public List<Question> getListOfQuestions(int sourceId);
}
