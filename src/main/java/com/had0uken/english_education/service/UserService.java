package com.had0uken.english_education.service;

import com.had0uken.english_education.entity.User;

import java.util.List;

public interface UserService {

    List<User> getAllUser();
    User getUser(String username);
    void saveUser(User user);
    void banUser(String username);
    void unBanUser(String username);
}
