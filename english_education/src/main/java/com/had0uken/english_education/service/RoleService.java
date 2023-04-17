package com.had0uken.english_education.service;

import com.had0uken.english_education.entity.Role;

import java.util.List;

public interface RoleService {
    public void save(Role role);

    public List<Role> findAll();
}
