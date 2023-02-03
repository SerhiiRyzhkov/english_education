package com.had0uken.english_education.dao;

import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.entity.User;

import java.util.List;

public interface QuestionDao extends EntityDao<Question>{
    public List<Question> getTextQuestions();
}
