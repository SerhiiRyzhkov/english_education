package com.had0uken.english_education.service;

import com.had0uken.english_education.entity.User;

public interface UserService {


    User getUser(String username);

    void saveUser(User user);
}
