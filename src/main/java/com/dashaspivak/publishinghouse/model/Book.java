package com.dashaspivak.publishinghouse.model;

import org.hibernate.annotations.Proxy;

import javax.persistence.*;
import java.sql.Date;
import java.util.List;

@Entity
@Table(name="book")
public class Book {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;
    @Basic
    @Column(name = "book")
    private String book;
    @Basic
    @Column(name = "id_genre")
    private long idGenre;
    @Basic
    @Column(name = "id_author")
    private long idAuthor;
    @Basic
    @Column(name = "id_series")
    private long idSeries;
    @Basic
    @Column(name = "release_date")
    private Date releaseDate;
    @Basic
    @Column(name = "description")
    private String description;
    @Basic
    @Column(name = "url")
    private String url;

//    @ManyToOne(cascade= {CascadeType.REFRESH}, fetch=FetchType.LAZY)
//    @JoinColumn(name="id_series", insertable = false, updatable = false)
//    private Series series;

//    @ManyToOne(cascade= {CascadeType.REFRESH}, fetch=FetchType.LAZY)
//    @JoinColumn(name="id_author", insertable = false, updatable = false)
//    private Author author;
//
//    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="book")
//    private List<BookMark> bookMarkList;
//
//    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="book")
//    private List<BookComment> bookCommentList;
//
//    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="book")
//    private List<BookGenre> bookGenreList;
//
//    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="book")
//    private List<LastSeen> lastSeenList;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getBook() {
        return book;
    }

    public void setBook(String book) {
        this.book = book;
    }

    public long getIdGenre() {
        return idGenre;
    }

    public void setIdGenre(long idGenre) {
        this.idGenre = idGenre;
    }

    public long getIdAuthor() {
        return idAuthor;
    }

    public void setIdAuthor(long idAuthor) {
        this.idAuthor = idAuthor;
    }

    public long getIdSeries() {
        return idSeries;
    }

    public void setIdSeries(long idSeries) {
        this.idSeries = idSeries;
    }

    public Date getReleaseDate() {
        return releaseDate;
    }

    public void setReleaseDate(Date releaseDate) {
        this.releaseDate = releaseDate;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

//    public Series getSeries() {
//        return series;
//    }

//    public void setSeries(Series series) {
//        this.series = series;
//    }
//
//    public Author getAuthor() {
//        return author;
//    }
//
//    public void setAuthor(Author author) {
//        this.author = author;
//    }
//
//    public List<LastSeen> getLastSeenList() {
//        return lastSeenList;
//    }
//
//    public void setLastSeenList(List<LastSeen> lastSeenList) {
//        this.lastSeenList = lastSeenList;
//    }
//
//    public List<BookMark> getBookMarkList() {
//        return bookMarkList;
//    }
//
//    public void setBookMarkList(List<BookMark> bookMarkList) {
//        this.bookMarkList = bookMarkList;
//    }
//
//    public List<BookComment> getBookCommentList() {
//        return bookCommentList;
//    }
//
//    public void setBookCommentList(List<BookComment> bookCommentList) {
//        this.bookCommentList = bookCommentList;
//    }
//
//    public List<BookGenre> getBookGenreList() {
//        return bookGenreList;
//    }
//
//    public void setBookGenreList(List<BookGenre> bookGenreList) {
//        this.bookGenreList = bookGenreList;
//    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Book book1 = (Book) o;

        if (id != book1.id) return false;
        if (idGenre != book1.idGenre) return false;
        if (idAuthor != book1.idAuthor) return false;
        if (idSeries != book1.idSeries) return false;
        if (book != null ? !book.equals(book1.book) : book1.book != null) return false;
        if (releaseDate != null ? !releaseDate.equals(book1.releaseDate) : book1.releaseDate != null) return false;
        if (description != null ? !description.equals(book1.description) : book1.description != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (book != null ? book.hashCode() : 0);
        result = 31 * result + (int) (idGenre ^ (idGenre >>> 32));
        result = 31 * result + (int) (idAuthor ^ (idAuthor >>> 32));
        result = 31 * result + (int) (idSeries ^ (idSeries >>> 32));
        result = 31 * result + (releaseDate != null ? releaseDate.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        return result;
    }
}
