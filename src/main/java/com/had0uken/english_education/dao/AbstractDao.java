package com.had0uken.english_education.dao;


import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;


public abstract class AbstractDao<E extends Serializable> implements EntityDao<E> {
    private final Class<E> entityClass;

    public AbstractDao() {
        this.entityClass = (Class<E>) ((ParameterizedType) this.getClass().getGenericSuperclass())
                .getActualTypeArguments()[0];
    }

    @Autowired
    private SessionFactory sessionFactory;

    protected Session getSession() {
        return this.sessionFactory.getCurrentSession();
    }

    @Override
    public E findById(final Serializable id) {
        return (E) getSession().get(entityClass, id);
    }

    @Override
    public void save(E entity) {
        getSession().saveOrUpdate(entity);
    }

    @Override
    public List<E> findALL() {
        return getSession().createQuery("from " + entityClass.getName()).getResultList();
    }

    @Override
    public E findByColumn(String column, String input) {
        Query query = getSession().createQuery("select e from " + entityClass.getSimpleName() + " e where e." +
                ":column = :input").setParameter("input", input).setParameter("column", column);
        return (E) query.getSingleResult();
    }
}

