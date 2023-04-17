package com.had0uken.english_education.service;

import com.had0uken.english_education.dao.WordDao;
import com.had0uken.english_education.entity.Word;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class WordServiceImpl implements WordService {

    @Autowired
    private WordDao wordDao;

    @Transactional
    @Override
    public List<Word> findAll() {
        return wordDao.findALL();
    }

    @Transactional
    @Override
    public void save(Word word) {
        wordDao.save(word);
    }
}
