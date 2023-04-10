package com.had0uken.english_education.functional;

import com.had0uken.english_education.enums.Level;

public interface LevelCounter {
    public Level getLevelByScore(int totalPoints, int userPoints);
}
