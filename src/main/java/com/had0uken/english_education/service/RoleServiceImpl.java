package com.had0uken.english_education.service;

import com.had0uken.english_education.dao.RoleDao;
import com.had0uken.english_education.entity.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public class RoleServiceImpl implements RoleService{
    @Autowired
    RoleDao roleDao;


    @Override
    public void save(Role role) {
        save(role);
    }
}
