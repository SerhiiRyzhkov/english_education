package com.had0uken.english_education.service;

import com.had0uken.english_education.dao.TaskDao;
import com.had0uken.english_education.entity.Task;
import com.had0uken.english_education.enums.Level;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.io.Serializable;
import java.util.List;

@Service
@Transactional
public class TaskServiceImpl implements TaskService{

    @Autowired
    private TaskDao taskDao;

    @Override
    public List<Task> findByParams(Level level, String type, String format){
        return taskDao.findByParams(level, type, format);
    }

    @Override
    public Task findById(Serializable id){
        return taskDao.findById(id);
    }

    @Override
    public void save(Task task) {
        taskDao.save(task);
    }
}
