package com.had0uken.english_education.entity;


import com.had0uken.english_education.validation.user.CheckUserEmail;
import com.had0uken.english_education.validation.user.CheckUserEmailUnique;
import com.had0uken.english_education.validation.user.CheckUserMobile;

import java.io.Serial;
import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;


@Entity
@Table(name = "users")
public class User implements Serializable{

    @Serial
    private static final long serialVersionUID = 8167906830939483475L;
    @Id
    @CheckUserEmail
    @CheckUserEmailUnique
    @Column(name = "email", nullable = false)
    private String email;
    @NotBlank(message = "Name can not be empty!")
    @Column(name = "name")
    private String name;
    @NotBlank(message = "Surname can not be empty!")
    @Column(name = "surname")
    private String surname;

    @Column(name = "password", nullable = false)
    private String password;

    @Column(nullable = false, columnDefinition = "default bit 1")
    private Boolean enabled;
    @CheckUserMobile
    @Column(name = "mobile")
    private String mobile;

    @Column(name = "level")
    private String level;

    @Column(name = "points")
    private int points;




    @ManyToMany(/*cascade = CascadeType.ALL,*/ fetch = FetchType.EAGER)
    @JoinTable(name = "authorities", joinColumns = {
            @JoinColumn(name = "email", nullable = false, updatable = false) }, inverseJoinColumns = {
            @JoinColumn(name = "role_id", nullable = false, updatable = false) })
    private Set<Role> roleSet = new HashSet<>(0);

    public User() {

    }

    public User(String email, String name, String surname, String password, Boolean enabled, String mobile,
                String level, int points, Set<Role> roleSet) {
        this.email = email;
        this.name = name;
        this.surname = surname;
        this.password = password;
        this.enabled = enabled;
        this.mobile = mobile;
        this.level = level;
        this.roleSet = roleSet;
        this.points=points;
    }


    public void addRole(Role role){
        if(roleSet==null)roleSet=new HashSet<>();
        roleSet.add(role);
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Boolean getEnabled() {
        return enabled;
    }

    public void setEnabled(Boolean enabled) {
        this.enabled = enabled;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public Set<Role> getRoleSet() {
        return roleSet;
    }

    public void setRoleSet(Set<Role> roleSet) {
        this.roleSet = roleSet;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }

    @Override
    public String toString() {
        return "User{" +
                "email='" + email + '\'' +
                ", name='" + name + '\'' +
                ", surname='" + surname + '\'' +
                ", password='" + password + '\'' +
                ", enabled=" + enabled +
                ", mobile='" + mobile + '\'' +
                ", level='" + level + '\'' +
                ", points='" + points + '\'' +
                '}';
    }
}
