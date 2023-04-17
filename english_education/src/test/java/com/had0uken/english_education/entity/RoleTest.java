package com.had0uken.english_education.entity;

import org.junit.Test;
import org.junit.jupiter.api.Assertions;

import java.util.HashSet;
import java.util.Set;

public class RoleTest {

    @Test
    public void testRole() {
        // Create a new Role object
        Role role = new Role(1, "Admin");

        // Test getters and setters
        Assertions.assertEquals(1, role.getRoleId());
        Assertions.assertEquals("Admin", role.getRoleName());

        // Test toString method
        Assertions.assertEquals("Role{roleId=1, roleName='Admin'}", role.toString());

        // Test adding and retrieving users
        Set<User> users = new HashSet<>();
        User user1 = new User();
        user1.setEmail("user1@ukr.net");
        user1.setPassword("qwerty123");
        User user2 = new User();
        user1.setEmail("user2@ukr.net");
        user1.setPassword("qwerty321");
        users.add(user1);
        users.add(user2);
        role.setUsers(users);
        Assertions.assertEquals(users, role.getUsers());
    }
}