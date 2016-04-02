package com.dashaspivak.publishinghouse.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Kokosha on 29.02.2016.
 */
@Entity
@Table(name = "genre")
public class Genre {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;
    @Basic
    @Column(name = "genre")
    private String genre;
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="genre")
    private List<BookGenre> bookGenreList;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
    public List<BookGenre> getBookGenreList() {
        return bookGenreList;
    }

    public void setBookGenreList(List<BookGenre> bookGenreList) {
        this.bookGenreList = bookGenreList;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Genre genre1 = (Genre) o;

        if (id != genre1.id) return false;
        if (genre != null ? !genre.equals(genre1.genre) : genre1.genre != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (genre != null ? genre.hashCode() : 0);
        return result;
    }
}
