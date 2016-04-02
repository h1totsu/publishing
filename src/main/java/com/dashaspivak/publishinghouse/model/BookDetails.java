package com.dashaspivak.publishinghouse.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Kokosha on 29.02.2016.
 */
@Entity
@Table(name = "bookDetails")
public class BookDetails {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;
    @Basic
    @Column(name = "id_book")
    private long idBook;
    @Basic
    @Column(name = "id_language")
    private long idLanguage;
    @Basic
    @Column(name = "price")
    private double price;
    @Basic
    @Column(name = "url")
    private String url;

    @ManyToOne(cascade = {CascadeType.REFRESH}, fetch = FetchType.LAZY)
    @JoinColumn(name = "id_book", insertable = false, updatable = false)
    private Book book;

    @ManyToOne(cascade = {CascadeType.REFRESH}, fetch = FetchType.LAZY)
    @JoinColumn(name = "id_language", insertable = false, updatable = false)
    private Language language;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "bookDetails")
    private List<Order> orderList;

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

    public long getIdLanguage() {
        return idLanguage;
    }

    public void setIdLanguage(long idLanguage) {
        this.idLanguage = idLanguage;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public List<Order> getOrderList() {
        return orderList;
    }

    public void setOrderList(List<Order> orderList) {
        this.orderList = orderList;
    }

    public Language getLanguage() {
        return language;
    }

    public void setLanguage(Language language) {
        this.language = language;
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

        BookDetails that = (BookDetails) o;

        if (id != that.id) return false;
        if (idBook != that.idBook) return false;
        if (idLanguage != that.idLanguage) return false;
        if (Double.compare(that.price, price) != 0) return false;
        if (url != null ? !url.equals(that.url) : that.url != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result;
        long temp;
        result = (int) (id ^ (id >>> 32));
        result = 31 * result + (int) (idBook ^ (idBook >>> 32));
        result = 31 * result + (int) (idLanguage ^ (idLanguage >>> 32));
        temp = Double.doubleToLongBits(price);
        result = 31 * result + (int) (temp ^ (temp >>> 32));
        result = 31 * result + (url != null ? url.hashCode() : 0);
        return result;
    }
}
