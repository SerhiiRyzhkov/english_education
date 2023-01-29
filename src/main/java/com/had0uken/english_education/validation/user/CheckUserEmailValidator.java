package com.had0uken.english_education.validation.user;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class CheckUserEmailValidator implements ConstraintValidator<CheckUserEmail,String> {

    private String emailReg;
    @Override
    public void initialize(CheckUserEmail constraintAnnotation) {
        emailReg="\\w+([\\.-]?\\w+)*@\\w+([\\.-]?\\w+)*\\.\\w{2,4}";
    }

    @Override
    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {
        return s.matches(emailReg);
    }
}
