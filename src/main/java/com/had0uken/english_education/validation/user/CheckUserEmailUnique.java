package com.had0uken.english_education.validation.user;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = CheckUserEmailUniqueValidator.class)
public @interface CheckUserEmailUnique {
    public String value() default "none";
    public String message() default "A user is already registered with this e-mail address";

    public Class<?>[] groups() default {};
    public Class<? extends Payload> [] payload() default {};
}
