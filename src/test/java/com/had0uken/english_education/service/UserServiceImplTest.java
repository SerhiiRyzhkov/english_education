package com.had0uken.english_education.service;

import com.had0uken.english_education.dao.UserDao;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.enums.Level;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.*;
import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class UserServiceImplTest {

    @Mock
    private UserDao userDao;

    @InjectMocks
    private UserServiceImpl userService;

    @Test
    public void testGetAllUser() {
        List<User> userList = new ArrayList<>();
        User user1 = new User();
        user1.setEmail("user1@ukr.net");
        User user2 = new User();
        user2.setEmail("user2@ukr.net");
        userList.add(user1);
        userList.add(user2);

        when(userDao.findALL()).thenReturn(userList);

        List<User> result = userService.getAllUser();

        assertNotNull(result);
        assertEquals(2, result.size());
        assertEquals("user1@ukr.net", result.get(0).getEmail());
        assertEquals("user2@ukr.net", result.get(1).getEmail());

        verify(userDao, times(1)).findALL();
    }

    @Test
    public void testGetUser() {
        String email = "user1@ukr.net";
        User user = new User();
        user.setEmail(email);

        when(userDao.findById(email)).thenReturn(user);

        User result = userService.getUser(email);

        assertNotNull(result);
        assertEquals("user1@ukr.net", result.getEmail());

        verify(userDao, times(1)).findById(email);
    }

    @Test
    public void testSaveUser() {
        String email = "user1@ukr.net";
        User user = new User();
        user.setEmail(email);

        userService.saveUser(user);

        verify(userDao, times(1)).saveUser(user);
    }

    @Test
    public void testBanUser() {
        String email = "user1@ukr.net";
        User user = new User();
        user.setEmail(email);

        userService.banUser(email);

        verify(userDao, times(1)).banUser(email);
    }

    @Test
    public void testUnBanUser() {
        String email = "user1@ukr.net";
        User user = new User();
        user.setEmail(email);

        userService.unBanUser(email);

        verify(userDao, times(1)).unBanUser(email);
    }

    @Test
    public void testSetLevel() {
        Serializable id = 1;
        Level level = Level.B1;

        userService.setLevel(id, level);

        verify(userDao, times(1)).setLevel(id, level);
    }

    @Test
    public void testIncreasePoints() {
        Serializable id = 1;
        int points = 10;

        userService.increasePoints(id, points);

        verify(userDao, times(1)).increasePoints(id, points);
    }

    @Test
    public void testIsPresent() {
        Serializable id = 1;

        when(userDao.isPresent(id)).thenReturn(true);

        boolean result = userService.isPresent(id);

        assertTrue(result);

        verify(userDao, times(1)).isPresent(id);
    }
}