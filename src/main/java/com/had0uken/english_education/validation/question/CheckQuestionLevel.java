package com.had0uken.english_education.validation.question;


import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = CheckQuestionLevelValidator.class)
public @interface CheckQuestionLevel {
    public String value() default "none";
    public String message() default "Level must be chosen according to CEFR standard";

    public Class<?>[] groups() default {};
    public Class<? extends Payload> [] payload() default {};
}
