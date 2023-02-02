package com.had0uken.english_education.entity;

import javax.persistence.*;
import java.io.Serial;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "messages")
public class Message implements Serializable {
    @Serial
    private static final long serialVersionUID = 7725794106805093514L;
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    @Column(name = "ID")
    private int id;

    @ManyToOne
    @JoinColumn(name="author_id")
    private User user;

    @Column(name = "message")
    private String message;

    @Column(name = "timestamp")
    private Date timestamp;


    public Message() {
    }

    public Message( User user, String message, Date timestamp) {

        this.user = user;
        this.message = message;
        this.timestamp = timestamp;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getAuthorId() {
        return user;
    }

    public void setAuthorId(User user) {
        this.user = user;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Message that = (Message) o;

        if (id != that.id) return false;
        if (user != null ? !user.equals(that.user) : that.user != null) return false;
        if (message != null ? !message.equals(that.message) : that.message != null) return false;
        if (timestamp != null ? !timestamp.equals(that.timestamp) : that.timestamp != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (user != null ? user.hashCode() : 0);
        result = 31 * result + (message != null ? message.hashCode() : 0);
        result = 31 * result + (timestamp != null ? timestamp.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "MessagesEntity{" +
                "id=" + id +
                ", user='" + user + '\'' +
                ", message='" + message + '\'' +
                ", timestamp='" + timestamp + '\'' +
                '}';
    }
}
