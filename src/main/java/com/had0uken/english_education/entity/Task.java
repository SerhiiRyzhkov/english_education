package com.had0uken.english_education.entity;

import javax.persistence.*;
import java.io.Serial;
import java.io.Serializable;

@Entity
@Table(name="tasks")
public class Task implements Serializable {

    @Serial
    private static final long serialVersionUID = 5937647890405714055L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "title")
    private String title;


    @Column(name = "level")
    private String level;


    @Column(name = "type")
    private String type;


    @Column(name = "format")
    private String format;

    public Task() {
    }

    public Task(int id, String name, String title, String level, String type, String format) {
        this.id = id;
        this.name = name;
        this.title=title;
        this.level = level;
        this.type = type;
        this.format = format;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {return title;}

    public void setTitle(String title) {this.title = title;}

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
    public String toString() {
        return "Task{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", title='" + title + '\'' +
                ", level='" + level + '\'' +
                ", type='" + type + '\'' +
                ", format='" + format + '\'' +
                '}';
    }
}
