package com.had0uken.english_education.validation.user;

import com.had0uken.english_education.validation.question.CheckQuestionLevelValidator;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = CheckUserEmailValidator.class)
public @interface CheckUserEmail {
    public String value() default "none";
    public String message() default "You should use a valid email";

    public Class<?>[] groups() default {};
    public Class<? extends Payload> [] payload() default {};

}
