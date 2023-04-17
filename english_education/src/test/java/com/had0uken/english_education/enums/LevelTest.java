package com.had0uken.english_education.enums;

import org.junit.Test;

import static org.junit.Assert.*;


public class LevelTest {

    @Test
    public void testGetLevel() {
        Level beginner = Level.A1;
        assertEquals("Beginner", beginner.getLevel());

        Level elementary = Level.A2;
        assertEquals("Elementary English", elementary.getLevel());

        Level intermediate = Level.B1;
        assertEquals("Intermediate English", intermediate.getLevel());

        Level upperIntermediate = Level.B2;
        assertEquals("Upper-Intermediate English", upperIntermediate.getLevel());

        Level advanced = Level.C1;
        assertEquals("Advanced English", advanced.getLevel());

        Level proficiency = Level.C2;
        assertEquals("Proficiency English", proficiency.getLevel());
    }

    @Test
    public void testGetDescription() {
        Level beginner = Level.A1;
        String expected = "Can understand and use familiar everyday expressions and very basic phrases aimed at the satisfaction of needs of a concrete type. Can introduce themselves and others and can ask and answer questions about personal details such as where someone lives, people they know and things they have. Can interact in a simple way provided the other person talks slowly and clearly and is prepared to help.";
        assertEquals(expected, beginner.getDescription());

        Level elementary = Level.A2;
        expected = "Can understand sentences and frequently used expressions related to areas of most immediate relevance (e.g. very basic personal and family information, shopping, local geography, employment). Can communicate in simple and routine tasks requiring a simple and direct exchange of information on familiar and routine matters. Can describe in simple terms aspects of their background immediate environment and matters in areas of immediate need.\n\n";
        assertEquals(expected, elementary.getDescription());

        Level intermediate = Level.B1;
        expected = "Can understand the main points of clear standard input on familiar matters regularly encountered in work, school, leisure, etc. Can deal with most situations likely to arise while travelling in an area where the language is spoken. Can produce simple connected text on topics which are familiar or of personal interest. Can describe experiences and events, dreams, hopes & ambitions and briefly give reasons and explanations for opinions and plans.";
        assertEquals(expected, intermediate.getDescription());

        Level upperIntermediate = Level.B2;
        expected = "Can understand the main ideas of complex text on both concrete and abstract topics, including technical discussions in their field of specialisation. Can interact with a degree of fluency and spontaneity that makes regular interaction with users of the target language quite possible without imposing strain on either party. Can produce clear, detailed text on a wide range of subjects and explain a viewpoint on a topical issue giving the advantages and disadvantages of various options.";
        assertEquals(expected, upperIntermediate.getDescription());

        Level advanced = Level.C1;
        expected = "Can understand a wide range of demanding, longer texts, and recognise implicit meaning. Can express themselves fluently and spontaneously without much obvious searching for expressions. Can use language flexibly and effectively for social, academic and professional purposes. Can produce clear, well-structured, detailed text on complex subjects, showing controlled use of organisational patterns, connectors and cohesive devices.";
        assertEquals(expected, advanced.getDescription());

        Level proficiency = Level.C2;
        expected = "Can understand virtually all types of texts. Can summarise information from different oral and written sources, reconstructing arguments and accounts in a coherent presentation. Can express themselves spontaneously, very fluently and precisely, differentiating finer shades of meaning even in more complex situations.";
        assertEquals(expected, proficiency.getDescription());
    }
}