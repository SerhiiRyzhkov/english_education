package com.had0uken.english_education.dao;

import com.had0uken.english_education.entity.User;

import java.io.Serializable;

public interface UserDao extends EntityDao<User>{

    void banUser(Serializable id);
    void unBanUser(Serializable id);

}
