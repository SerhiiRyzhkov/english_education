package com.had0uken.english_education.entity;




import com.had0uken.english_education.validation.question.CheckCorrectAnswer;
import com.had0uken.english_education.validation.question.CheckQuestionLevel;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.io.Serial;
import java.io.Serializable;
import java.util.Objects;

@Entity
@Table(name="questions")
public class Question implements Serializable {

    @Serial
    private static final long serialVersionUID = -6346459013401700189L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "question")
    @Size(min = 20, message = "question must be min 20 symbols")
    private String question;
    @NotBlank(message = "answers can not be empty!")
    @Column(name = "answer1")
    private String answer1;
    @NotBlank(message = "answers can not be empty!")
    @Column(name = "answer2")
    private String answer2;
    @NotBlank(message = "answers can not be empty!")
    @Column(name = "answer3")
    private String answer3;
    @CheckCorrectAnswer
    @Column(name = "correct_answer")
    private int correctAnswer;
    @CheckQuestionLevel
    @Column(name = "level")
    private String level;

    @Column(name = "type")
    private String type;

    @Column(name = "format")
    private String format;



    public Question() {
    }

    public Question(int id, String question, String answer1, String answer2, String answer3, int correctAnswer, String level, String type, String format) {
        this.id = id;
        this.question = question;
        this.answer1 = answer1;
        this.answer2 = answer2;
        this.answer3 = answer3;
        this.correctAnswer = correctAnswer;
        this.level = level;
        this.type = type;
        this.format = format;


    }



    @Override
    public String toString() {
        return "Question{" +
                "id=" + id +
                ", question='" + question + '\'' +
                ", answer1='" + answer1 + '\'' +
                ", answer2='" + answer2 + '\'' +
                ", answer3='" + answer3 + '\'' +
                ", correctAnswer=" + correctAnswer +
                ", level='" + level + '\'' +
                ", type='" + type + '\'' +
                ", format='" + format + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer1() {
        return answer1;
    }

    public void setAnswer1(String answer1) {
        this.answer1 = answer1;
    }

    public String getAnswer2() {
        return answer2;
    }

    public void setAnswer2(String answer2) {
        this.answer2 = answer2;
    }

    public String getAnswer3() {
        return answer3;
    }

    public void setAnswer3(String answer3) {
        this.answer3 = answer3;
    }

    public int getCorrectAnswer() {
        return correctAnswer;
    }

    public void setCorrectAnswer(int correctAnswer) {
        this.correctAnswer = correctAnswer;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Question question = (Question) o;
        return id == question.id;
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }

}
