package com.dashaspivak.publishinghouse.model;

import javax.persistence.*;

/**
 * Created by Kokosha on 29.02.2016.
 */
@Entity
@Table(name="bookGenre")
public class BookGenre {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;
    @Basic
    @Column(name = "id_book")
    private long idBook;
    @Basic
    @Column(name = "id_genre")
    private long idGenre;

    @ManyToOne(cascade= {CascadeType.REFRESH}, fetch=FetchType.LAZY)
    @JoinColumn(name="id_book", insertable = false, updatable = false)
    private Book book;

    @ManyToOne(cascade= {CascadeType.REFRESH}, fetch=FetchType.LAZY)
    @JoinColumn(name="id_genre", insertable = false, updatable = false)
    private Genre genre;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getIdBook() {
        return idBook;
    }

    public void setIdBook(long idBook) {
        this.idBook = idBook;
    }

    public long getIdGenre() {
        return idGenre;
    }

    public void setIdGenre(long idGenre) {
        this.idGenre = idGenre;
    }

    public Genre getGenre() {
        return genre;
    }

    public void setGenre(Genre genre) {
        this.genre = genre;
    }

    public Book getBook() {
        return book;
    }

    public void setBook(Book book) {
        this.book = book;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        BookGenre bookGenre = (BookGenre) o;

        if (id != bookGenre.id) return false;
        if (idBook != bookGenre.idBook) return false;
        if (idGenre != bookGenre.idGenre) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (int) (idBook ^ (idBook >>> 32));
        result = 31 * result + (int) (idGenre ^ (idGenre >>> 32));
        return result;
    }
}
