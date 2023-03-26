package com.had0uken.english_education.service;

import com.had0uken.english_education.dao.TaskDao;
import com.had0uken.english_education.entity.Task;
import com.had0uken.english_education.enums.Level;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.*;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@RunWith(MockitoJUnitRunner.class)
public class TaskServiceImplTest {

    @Mock
    private TaskDao taskDao;

    @InjectMocks
    private TaskServiceImpl taskService;

    @Test
    public void testFindByParams() {

        List<Task> expected = Arrays.asList(new Task(), new Task());
        when(taskDao.findByParams(any(Level.class), anyString(), anyString())).thenReturn(expected);


        List<Task> actual = taskService.findByParams(Level.A2, "Reading", "reading");


        assertEquals(expected, actual);
        verify(taskDao).findByParams(Level.A2, "Reading", "reading");

    }

    @Test
    public void testFindByParamsWithoutLevel() {
        List<Task> expected = Arrays.asList(new Task(), new Task());
        when(taskDao.findByParams(anyString(), anyString())).thenReturn(expected);


        List<Task> actual = taskService.findByParams("Reading", "reading");


        assertEquals(expected, actual);
        verify(taskDao).findByParams("Reading", "reading");
    }

    @Test
    public void testFindById() {

        Task expected = new Task();
        taskService.save(expected);
        when(taskDao.findById(1)).thenReturn(expected);


        Task actual = taskService.findById(1);

    }

    @Test
    public void testSave() {

        Task task = new Task();

        // Act
        taskService.save(task);

        verify(taskDao).save(task);
    }
}