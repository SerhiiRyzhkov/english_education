package com.had0uken.english_education.dao;


import com.had0uken.english_education.entity.Role;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.enums.Level;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.Serializable;

@Repository
public class UserDaoImpl extends AbstractDao<User> implements UserDao  {
    @Autowired
    private SessionFactory sessionFactory;
    @Autowired
    private RoleDao roleDao;

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

    @Override
    public void setLevel(Serializable id, Level level) {
        User user = getSession().get(User.class,id);
        user.setLevel(level.toString());
    }

    @Override
    public void increasePoints(Serializable id, int points){
        User user = getSession().get(User.class,id);
        user.setPoints(user.getPoints()+points);
    }

    @Override
    public boolean isPresent(Serializable id) {
        return (getSession().get(User.class, id)) != null;
    }

    @Override
    public void saveUser(User user) {
        user.addRole(new Role(1,"ROLE_USER"));
        getSession().save(user);
    }
}
