package com.had0uken.english_education.dao;


import com.had0uken.english_education.entity.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

@Repository
public class UserDaoImpl extends AbstractDao<User> implements UserDao  {
    @Autowired
    private SessionFactory sessionFactory;

    protected Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }
    @Override
    public void banUser(Serializable id) {
        User user = getSession().get(User.class,id);
        user.setEnabled(false);
        getSession().merge(user);
    }

    @Override
    public void unBanUser(Serializable id) {
        User user = getSession().get(User.class,id);
        user.setEnabled(true);
        getSession().merge(user);
    }
}
