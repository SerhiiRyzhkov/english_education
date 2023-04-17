package com.had0uken.english_education.entity;

import org.junit.Test;
import org.junit.jupiter.api.Assertions;

public class IrregularTest {

    @Test
    public void testIrregular() {
        String base1 = "eat";
        String past1 = "ate";
        String participle1 = "eaten";
        Irregular irregular1 = new Irregular(base1, past1, participle1);

        String base2 = "begin";
        String past2 = "began";
        String participle2 = "begun";
        Irregular irregular2 = new Irregular(base2, past2, participle2);



        Assertions.assertEquals(base1, irregular1.getBase());
        Assertions.assertEquals(past1, irregular1.getPast());
        Assertions.assertEquals(participle1, irregular1.getParticiple());
        Assertions.assertEquals(0, irregular1.getId()); // default value

        Assertions.assertEquals(base2, irregular2.getBase());
        Assertions.assertEquals(past2, irregular2.getPast());
        Assertions.assertEquals(participle2, irregular2.getParticiple());
        Assertions.assertEquals(0, irregular2.getId()); // default value


        irregular1.setId(1);
        Assertions.assertEquals(1, irregular1.getId());

        irregular2.setId(2);
        Assertions.assertEquals(2, irregular2.getId());


        String expected1 = "Irregular{id=1, base='eat', past='ate', participle='eaten'}";
        Assertions.assertEquals(expected1, irregular1.toString());

        String expected2 = "Irregular{id=2, base='begin', past='began', participle='begun'}";
        Assertions.assertEquals(expected2, irregular2.toString());
    }
}