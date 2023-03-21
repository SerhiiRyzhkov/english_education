package com.had0uken.english_education.service;


import com.had0uken.english_education.dao.MessageDao;
import com.had0uken.english_education.entity.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class MessageServiceImpl implements MessageService {

    @Autowired
    private MessageDao messageDao;


    public List<Message> findALL() {
        return messageDao.findALL();
    }

    @Override
    public void save(Message message) {
        messageDao.save(message);
    }
}
