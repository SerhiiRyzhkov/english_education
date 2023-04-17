package com.had0uken.english_education.validation.question;


import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = CheckCorrectAnswerValidator.class)
public @interface CheckCorrectAnswer {
    public String value() default "-";

    public String message() default "correct answer must be between 1 and 3!";

    public Class<?>[] groups() default {};

    public Class<? extends Payload>[] payload() default {};
}
