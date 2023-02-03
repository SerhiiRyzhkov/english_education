package com.had0uken.english_education.dao;

import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class QuestionDaoImpl extends AbstractDao<Question> implements QuestionDao {

    @Autowired
    private SessionFactory sessionFactory;


    protected Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }
    @Override
    public List<Question> getTextQuestions() {
     return getSession().createQuery("from Question where format = 'simple'").getResultList();
    }
}
