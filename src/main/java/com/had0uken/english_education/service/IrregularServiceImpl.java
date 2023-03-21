package com.had0uken.english_education.service;

import com.had0uken.english_education.dao.IrregularDao;
import com.had0uken.english_education.entity.Irregular;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class IrregularServiceImpl implements IrregularService {

    @Autowired
    private IrregularDao irregularDao;

    @Transactional
    @Override
    public List<Irregular> getAllIrregulars() {
        return irregularDao.findALL();
    }
}
