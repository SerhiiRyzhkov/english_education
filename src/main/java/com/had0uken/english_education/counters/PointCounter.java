package com.had0uken.english_education.counters;

import com.had0uken.english_education.entity.Question;

public interface PointCounter {
    public int getPoints(Question question);
}
