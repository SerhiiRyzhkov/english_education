package com.had0uken.english_education.functional;

import org.springframework.security.core.Authentication;
import org.springframework.web.servlet.ModelAndView;

public interface HeaderCreator {
    public ModelAndView getModelWithHeader(Authentication authentication);
}
