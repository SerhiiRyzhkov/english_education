package com.had0uken.english_education.counters;

import com.had0uken.english_education.enums.Level;

public interface LevelCounter {
    public Level getLevelByScore(int totalPoints, int userPoints);
}
