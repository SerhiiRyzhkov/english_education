package com.had0uken.english_education.dao;

import com.had0uken.english_education.entity.Question;
import com.had0uken.english_education.entity.Task;
import com.had0uken.english_education.enums.Level;

import java.util.List;

public interface TaskDao extends EntityDao<Task>{

    public List<Task> findByParams(Level level, String type, String format) ;
}
