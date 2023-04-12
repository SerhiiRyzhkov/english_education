package com.had0uken.english_education.dao;

import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.enums.Level;
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
    public List<Question> getListOfQuestions(String format) {
        System.out.println(getSession().createQuery("from Question where format = :formatParam").
                setParameter("formatParam", format).
                getResultList());
        return getSession().createQuery("from Question where format = :formatParam").
                setParameter("formatParam", format).
                getResultList();
    }

    @Override
    public List<Question> getListOfQuestions(Level level, String type, String format, int sourceId) {
        return getSession().createQuery("from Question  where " +
                        "level=:levelParam and type=:typeParam and format=:formatParam and sourceId=:sourceIdParam")
                .setParameter("levelParam", level.toString())
                .setParameter("typeParam", type)
                .setParameter("formatParam", format)
                .setParameter("sourceIdParam", sourceId)
                .getResultList();
    }

    @Override
    public List<Question> getListOfQuestions(int sourceId) {
        return getSession().createQuery("from Question  where sourceId=:sourceIdParam")
                .setParameter("sourceIdParam", sourceId)
                .getResultList();
    }

}
