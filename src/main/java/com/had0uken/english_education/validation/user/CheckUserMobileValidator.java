package com.had0uken.english_education.validation.user;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CheckUserMobileValidator implements ConstraintValidator<CheckUserMobile,String> {

    private String mobileReg;
    @Override
    public void initialize(CheckUserMobile constraintAnnotation) {
        mobileReg="[+]\\d{12}";
    }

    @Override
    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {
        return s.matches(mobileReg);
    }
}
