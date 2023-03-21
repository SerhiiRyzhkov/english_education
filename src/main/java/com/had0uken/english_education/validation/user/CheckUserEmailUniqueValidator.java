package com.had0uken.english_education.validation.user;

import com.had0uken.english_education.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.List;

public class CheckUserEmailUniqueValidator implements ConstraintValidator<CheckUserEmailUnique, String> {

    @Autowired
    private UserService userService;


    @Override
    public void initialize(CheckUserEmailUnique constraintAnnotation) {

    }

    @Override
    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {
        if (userService == null) return true;
        return !userService.isPresent(s);
    }


}
