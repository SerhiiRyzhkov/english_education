package com.had0uken.english_education.service;

import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.enums.Level;

import java.io.Serializable;
import java.util.List;

public interface UserService {

    List<User> getAllUser();

    User getUser(String username);

    void saveUser(User user);

    void banUser(String username);

    void unBanUser(String username);

    void setLevel(Serializable id, Level level);

    public void increasePoints(Serializable id, int points);

    public boolean isPresent(Serializable id);
}
