package com.had0uken.english_education.validation.user;

import javax.validation.Constraint;
import javax.validation.Payload;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
@Constraint(validatedBy = CheckUserMobileValidator.class)
public @interface CheckUserMobile {
    public String value() default "none";

    public String message() default "You phone number must be in the form +XXXXXXXXXXXX";

    public Class<?>[] groups() default {};

    public Class<? extends Payload>[] payload() default {};
}
