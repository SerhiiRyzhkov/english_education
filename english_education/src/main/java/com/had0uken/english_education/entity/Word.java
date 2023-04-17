package com.had0uken.english_education.entity;

import javax.persistence.*;
import java.io.Serial;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name = "words")
public class Word implements Serializable {


    @Serial
    private static final long serialVersionUID = 9100768215222980090L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "word")
    private String word;

    @Column(name = "parts")
    private String parts;

    @Column(name = "definition")
    private String definition;

    @Column(name = "example1")
    private String example1;

    @Column(name = "example2")
    private String example2;


    @Column(name = "example3")
    private String example3;

    @Column(name = "color")
    private String color;

    public Word() {
    }

    public Word(String word, String parts, String definition, String example1, String example2, String example3) {
        this.word = word;
        this.parts = parts;
        this.definition = definition;
        this.example1 = example1;
        this.example2 = example2;
        this.example3 = example3;
        if (parts.equals("verb"))
            this.color = "Yellow";
        else if (parts.equals("adjective"))
            this.color = "Blue";
        else if (parts.equals("adverb"))
            this.color = "Purple";
        else this.color = "Green";

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getWord() {
        return word;
    }

    public void setWord(String word) {
        this.word = word;
    }


    public String getParts() {
        return parts;
    }

    public void setParts(String parts) {
        this.parts = parts;
    }

    public String getDefinition() {
        return definition;
    }

    public void setDefinition(String definition) {
        this.definition = definition;
    }

    public String getExample1() {
        return example1;
    }

    public void setExample1(String example1) {
        this.example1 = example1;
    }

    public String getExample2() {
        return example2;
    }

    public void setExample2(String example2) {
        this.example2 = example2;
    }

    public String getExample3() {
        return example3;
    }

    public void setExample3(String example3) {
        this.example3 = example3;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Word word1 = (Word) o;
        return id == word1.id && Objects.equals(word, word1.word) && Objects.equals(parts, word1.parts) && Objects.equals(definition, word1.definition) && Objects.equals(example1, word1.example1) && Objects.equals(example2, word1.example2) && Objects.equals(example3, word1.example3) && Objects.equals(color, word1.color);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, word, parts, definition, example1, example2, example3, color);
    }

    @Override
    public String toString() {
        return "Word{" +
                "id=" + id +
                ", word='" + word + '\'' +
                ", definition='" + definition + '\'' +
                '}';
    }
}
