package com.had0uken.english_education.service;


import com.had0uken.english_education.dao.RoleDao;
import com.had0uken.english_education.entity.Role;
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
public class RoleServiceImplTest {
    @Mock
    private RoleDao roleDao;

    @InjectMocks
    private RoleServiceImpl roleService;

    @Test
    public void testFindAllRoles() {

        Role role1 = new Role(1,"USER_ROLE");

        Role role2 = new Role(2,"ADMIN_ROLE");

        List<Role> roles = new ArrayList<>();
        roles.add(role1);
        roles.add(role2);

        when(roleDao.findALL()).thenReturn(roles);

        List<Role> result = roleService.findAll();

        assertEquals(roles,result);
    }

}