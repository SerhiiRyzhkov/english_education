package com.had0uken.english_education.dao;

import java.io.Serializable;

public interface EntityDao<E> {

    E findById(Serializable id);

    void save(E entity);
}