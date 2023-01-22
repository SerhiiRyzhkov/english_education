package com.had0uken.english_education.validation.question;


import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;
import java.util.Arrays;

public class CheckCorrectAnswerValidator implements ConstraintValidator<CheckCorrectAnswer,Integer> {

    private Integer[] correctAnswer;
    @Override
    public void initialize(CheckCorrectAnswer checkCorrectAnswer) {
        correctAnswer= new Integer[]{1,2,3};
    }

    @Override
    public boolean isValid(Integer integer, ConstraintValidatorContext constraintValidatorContext) {
        return Arrays.asList(correctAnswer).contains(integer);
    }



}
