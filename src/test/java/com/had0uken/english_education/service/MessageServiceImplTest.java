package com.had0uken.english_education.service;

import com.had0uken.english_education.dao.MessageDao;
import com.had0uken.english_education.entity.Message;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import static org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;

@ExtendWith(MockitoExtension.class)
public class MessageServiceImplTest {

    @Mock
    private MessageDao messageDao;

    @InjectMocks
    private MessageServiceImpl messageService;

    @Test
    public void testFindAllMessages() {

        Message message1 = new Message();
        message1.setMessage("Hello world!");
        Message message2 = new Message();
        message2.setMessage("How are you?");


        List<Message> messages = new ArrayList<>();
        messages.add(message1);
        messages.add(message2);


        when(messageDao.findALL()).thenReturn(messages);


        List<Message> result = messageService.findALL();


        assertEquals(messages, result);
    }

    @Test
    public void testSaveMessage() {

        Message message = new Message();
        message.setMessage("Hello world!");

        messageService.save(message);


        verify(messageDao, times(1)).save(message);
    }
}
