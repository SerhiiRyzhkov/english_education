package com.had0uken.english_education.service;

import com.had0uken.english_education.dao.WordDao;
import com.had0uken.english_education.entity.Word;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class WordServiceImplTest {

    @Mock
    private WordDao wordDaoMock;

    @InjectMocks
    private WordServiceImpl wordService;

    @Before
    public void init() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testFindAll() {
        // Create some test data
        List<Word> words = new ArrayList<>();
        words.add(new Word("Foil","verb",
                "to stop something from happening, especially something illegal; " +
                        "to prevent somebody from doing something",
                "to foil a plan/crime/plot","They were foiled in " +
                "their attempt to smuggle the paintings.",
                "Customs officials foiled an attempt to smuggle the paintings out of the country."));

        words.add(new Word("Threshold","noun","the point or level at which " +
                "something begins or changes",
                "If your income rises above a certain threshold, your tax rate also rises.",
                " sounds that are above/below the threshold of hearing [=sounds that are too high/low to be heard]",
                "I have a low threshold for boredom. [=I get bored easily]"));


        when(wordDaoMock.findALL()).thenReturn(words);


        List<Word> result = wordService.findAll();


        verify(wordDaoMock, times(1)).findALL();


        assertEquals(words, result);
    }

    @Test
    public void testSave() {

        Word word = new Word("Foil","verb",
                "to stop something from happening, especially something illegal; " +
                        "to prevent somebody from doing something",
                "to foil a plan/crime/plot","They were foiled in " +
                "their attempt to smuggle the paintings.",
                "Customs officials foiled an attempt to smuggle the paintings out of the country.");

        wordService.save(word);

        verify(wordDaoMock, times(1)).save(word);
    }

}