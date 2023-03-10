package com.had0uken.english_education.service;

import com.had0uken.english_education.entity.Word;

import java.util.List;

public interface WordService {

    public List<Word>findAll();
    public void save(Word word);
}
