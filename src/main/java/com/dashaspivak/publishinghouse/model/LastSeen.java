package com.dashaspivak.publishinghouse.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Kokosha on 29.02.2016.
 */
@Entity
@Table(name = "lastSeen")
public class LastSeen {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;
    @Basic
    @Column(name = "id_user")
    private long idUser;
    @Basic
    @Column(name = "id_book")
    private long idBook;
    @Basic
    @Column(name = "time")
    private Timestamp time;

    @ManyToOne(cascade= {CascadeType.REFRESH}, fetch=FetchType.LAZY)
    @JoinColumn(name="id_user", insertable = false, updatable = false)
    private User user;

    @ManyToOne(cascade= {CascadeType.REFRESH}, fetch=FetchType.LAZY)
    @JoinColumn(name="id_book", insertable = false, updatable = false)
    private Book book;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getIdUser() {
        return idUser;
    }

    public void setIdUser(long idUser) {
        this.idUser = idUser;
    }

    public long getIdBook() {
        return idBook;
    }

    public void setIdBook(long idBook) {
        this.idBook = idBook;
    }

    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        LastSeen lastSeen = (LastSeen) o;

        if (id != lastSeen.id) return false;
        if (idUser != lastSeen.idUser) return false;
        if (idBook != lastSeen.idBook) return false;
        if (time != null ? !time.equals(lastSeen.time) : lastSeen.time != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (int) (idUser ^ (idUser >>> 32));
        result = 31 * result + (int) (idBook ^ (idBook >>> 32));
        result = 31 * result + (time != null ? time.hashCode() : 0);
        return result;
    }
}
