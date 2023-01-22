package com.had0uken.english_education.service;


import com.had0uken.english_education.dao.UserDao;
import com.had0uken.english_education.entity.Role;
import com.had0uken.english_education.entity.User;
import com.had0uken.english_education.enums.Level;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;

import javax.persistence.Transient;
import javax.transaction.Transactional;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;


@Service
@Transactional
public class UserServiceImpl implements UserService, UserDetailsService {

    @Autowired
    UserDao userDao;


    @Override
    public List<User> getAllUser() {
        return userDao.findALL();
    }

    @Transactional
    @Override
    public User getUser(String username) {
        return userDao.findById(username);
    }

    @Transactional
    @Override
    public void saveUser(User user) {
        userDao.save(user);
    }

    @Transactional
    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User user = userDao.findById(s);

        if (user == null) throw new UsernameNotFoundException("Invalid email or password");
        List<GrantedAuthority> authorityList = new ArrayList<>();

        for(Role role: user.getRoleSet())
            authorityList.add(new SimpleGrantedAuthority(role.getRoleName()));
        return new org.springframework.security.core.userdetails.User(s, user.getPassword(), user.getEnabled(), true, true, true, authorityList);
    }

    @Transactional
    @Override
    public void banUser(String username) {
        userDao.banUser(username);
    }
    @Transactional
    @Override
    public void unBanUser(String username) {
        userDao.unBanUser(username);
    }

    @Transactional
    @Override
    public void setLevel(Serializable id, Level level) {
        userDao.setLevel(id,level);
    }
    @Transactional
    @Override
    public void increasePoints(Serializable id, int points) {
        userDao.increasePoints(id,points);
    }
}