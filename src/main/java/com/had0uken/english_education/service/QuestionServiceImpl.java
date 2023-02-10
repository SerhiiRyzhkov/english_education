package com.had0uken.english_education.service;

import com.had0uken.english_education.dao.QuestionDao;
import com.had0uken.english_education.dao.UserDao;
import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.enums.Level;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class QuestionServiceImpl implements QuestionService{

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
    public List<Question> getListOfQuestions(String format) {
        return questionDao.getListOfQuestions(format);
    }

    @Transactional
    @Override
    public List<Question> getListOfQuestions(Level level, String type, String format, int sourceId) {
        return questionDao.getListOfQuestions(level,type,format,sourceId);
    }
    @Transactional
    @Override
    public List<Question> getListOfQuestions(int sourceId) {
        return questionDao.getListOfQuestions(sourceId);
    }
}
