package com.had0uken.english_education.service;


import com.had0uken.english_education.dao.UserDao;
import com.had0uken.english_education.entity.Role;
import com.had0uken.english_education.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.persistence.Transient;
import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService, UserDetailsService {

    @Autowired
    UserDao userDao;


    @Transient
    @Override
    public User getUser(String username) {
        return userDao.findById(username);
    }

    @Transient
    @Override
    public void saveUser(User user) {
        userDao.save(user);
    }

    @Override
    public UserDetails loadUserByUsername(String s) throws UsernameNotFoundException {
        User user = userDao.findById(s);

        if (user == null) throw new UsernameNotFoundException("Invalid email or password");
        List<GrantedAuthority> authorityList = new ArrayList<>();

        for(Role role: user.getRoleSet())
            authorityList.add(new SimpleGrantedAuthority(role.getRoleName()));
        return new org.springframework.security.core.userdetails.User(s, user.getPassword(), user.getEnabled(), true, true, true, authorityList);
    }
}