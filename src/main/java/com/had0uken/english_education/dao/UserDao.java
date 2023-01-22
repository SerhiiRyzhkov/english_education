package com.had0uken.english_education.dao;

import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.enums.Level;

import java.io.Serializable;

public interface UserDao extends EntityDao<User>{

    void banUser(Serializable id);
    void unBanUser(Serializable id);

    void setLevel(Serializable id, Level level);

    public void increasePoints(Serializable id, int points);
}
