package com.had0uken.english_education.service;

import com.had0uken.english_education.dao.QuestionDao;
import com.had0uken.english_education.dao.UserDao;
import com.had0uken.english_education.entity.Question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class QuestionServiceImpl implements QuestionService{
    public QuestionServiceImpl() {
        System.out.println("bean question service was created!");
    }

    @Autowired
    QuestionDao questionDao;

    @Transactional
    @Override
    public List<Question> getAllQuestions() {
        return questionDao.findALL();
    }
    @Transactional
    @Override
    public void save(Question question) {
        questionDao.save(question);
    }

    @Transactional
    @Override
    public List<Question> getTextQuestions() {
        return questionDao.getTextQuestions();
    }
}
