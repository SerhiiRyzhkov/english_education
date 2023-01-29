package com.had0uken.english_education.validation.question;

import com.had0uken.english_education.enums.Level;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.Arrays;

public class CheckQuestionLevelValidator implements ConstraintValidator<CheckQuestionLevel, String> {


    @Override
    public void initialize(CheckQuestionLevel constraintAnnotation) {
        ConstraintValidator.super.initialize(constraintAnnotation);
    }

    @Override
    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {
        return Arrays.stream(Level.values()).map(Enum::toString).anyMatch(l->l.equals(s));
    }
}
