package com.had0uken.english_education.service;

import com.had0uken.english_education.entity.Message;

import java.util.List;

public interface MessageService {
    public List<Message> findALL();
    public void save(Message message);
}
