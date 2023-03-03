package com.had0uken.english_education.service;

import com.had0uken.english_education.dao.QuestionDao;
import com.had0uken.english_education.dao.TaskDao;
import com.had0uken.english_education.entity.Task;
import com.had0uken.english_education.enums.Level;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.Serializable;
import java.util.List;

public interface TaskService {

    public List<Task> findByParams(Level level, String type, String format);

    public Task findById(Serializable id);

    public void save(Task task);
}
