package com.had0uken.english_education.dao;

import com.had0uken.english_education.entity.Task;
import com.had0uken.english_education.enums.Level;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TaskDaoImpl extends AbstractDao<Task> implements TaskDao {

    @Autowired
    private SessionFactory sessionFactory;


    protected Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }

    @Override
    public List<Task> findByParams(Level level, String type, String format) {
        return getSession().createQuery("from Task where level=:levelParam and" +
                        " type=:typeParam and format=:formatParam")
                .setParameter("levelParam", level.toString())
                .setParameter("typeParam", type)
                .setParameter("formatParam", format)
                .getResultList();
    }

    @Override
    public List<Task> findByParams(String type, String format) {
        return getSession().createQuery("from Task where type=:typeParam and format=:formatParam")
                .setParameter("typeParam", type)
                .setParameter("formatParam", format)
                .getResultList();
    }
}
