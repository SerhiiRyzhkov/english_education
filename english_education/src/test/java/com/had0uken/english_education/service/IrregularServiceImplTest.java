package com.had0uken.english_education.service;

import com.had0uken.english_education.dao.IrregularDao;
import com.had0uken.english_education.entity.Irregular;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.Arrays;
import java.util.List;

import static org.junit.Assert.*;

@RunWith(MockitoJUnitRunner.class)
public class IrregularServiceImplTest {

    @Mock
    private IrregularDao irregularDao;

    @InjectMocks
    private IrregularServiceImpl irregularService;

    @Test
    public void testGetAllIrregulars() {
        List<Irregular> expectedIrregulars = Arrays.asList(
                new Irregular("go", "went", "gone"),
                new Irregular("eat", "ate", "eaten")
        );

        Mockito.when(irregularDao.findALL()).thenReturn(expectedIrregulars);

        List<Irregular> actualIrregulars = irregularService.getAllIrregulars();

        Assert.assertEquals(expectedIrregulars.size(), actualIrregulars.size());

        for (int i = 0; i < expectedIrregulars.size(); i++) {
            Irregular expectedIrregular = expectedIrregulars.get(i);
            Irregular actualIrregular = actualIrregulars.get(i);

            Assert.assertEquals(expectedIrregular.getBase(), actualIrregular.getBase());
            Assert.assertEquals(expectedIrregular.getPast(), actualIrregular.getPast());
            Assert.assertEquals(expectedIrregular.getParticiple(), actualIrregular.getParticiple());
        }
    }
}