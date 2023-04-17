package com.had0uken.english_education.entity;


import javax.persistence.*;
import java.io.Serial;
import java.io.Serializable;

@Entity
@Table(name = "irregulars")
public class Irregular implements Serializable {

    @Serial
    private static final long serialVersionUID = -293287928304021066L;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "id")
    private int id;

    @Column(name = "base")
    private String base;

    @Column(name = "past")
    private String past;

    @Column(name = "participle")
    private String participle;

    public Irregular() {
    }

    public Irregular(String base, String past, String participle) {
        this.base = base;
        this.past = past;
        this.participle = participle;
    }

    public String getBase() {
        return base;
    }

    public void setBase(String base) {
        this.base = base;
    }

    public String getPast() {
        return past;
    }

    public void setPast(String past) {
        this.past = past;
    }

    public String getParticiple() {
        return participle;
    }

    public void setParticiple(String participle) {
        this.participle = participle;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return "Irregular{" +
                "id=" + id +
                ", base='" + base + '\'' +
                ", past='" + past + '\'' +
                ", participle='" + participle + '\'' +
                '}';
    }
}
