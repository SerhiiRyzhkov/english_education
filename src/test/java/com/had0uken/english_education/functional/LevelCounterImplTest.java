package com.had0uken.english_education.functional;

import com.had0uken.english_education.enums.Level;
import org.junit.Test;
import org.junit.jupiter.api.Assertions;


public class LevelCounterImplTest {

    private final LevelCounter levelCounter = new LevelCounterImpl();

    @Test
    public void testGetLevelByScore() {
        Level level = levelCounter.getLevelByScore(100, 30);
        Assertions.assertEquals(Level.A1, level);

        level = levelCounter.getLevelByScore(100, 50);
        Assertions.assertEquals(Level.A2, level);

        level = levelCounter.getLevelByScore(100, 60);
        Assertions.assertEquals(Level.B1, level);

        level = levelCounter.getLevelByScore(100, 75);
        Assertions.assertEquals(Level.B2, level);

        level = levelCounter.getLevelByScore(100, 90);
        Assertions.assertEquals(Level.C1, level);

        level = levelCounter.getLevelByScore(100, 100);
        Assertions.assertEquals(Level.C2, level);
    }
}
