package com.had0uken.english_education.dao;

import java.io.Serializable;
import java.util.List;

public interface EntityDao<E extends Serializable> {
    E findById(Serializable id);

    void save(E entity);

    List<E> findALL();

    E findByColumn(String column, String input);

}