package com.dashaspivak.publishinghouse.model;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Kokosha on 29.02.2016.
 */
@Entity
@Table(name = "order")
public class Order {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;
    @Basic
    @Column(name = "id_bookDetails")
    private long idBookDetails;
    @Basic
    @Column(name = "id_user")
    private long idUser;
    @Basic
    @Column(name = "order_data")
    private Timestamp orderData;
    @Basic
    @Column(name = "id_address")
    private long idAddress;

    @ManyToOne(cascade= {CascadeType.REFRESH}, fetch=FetchType.LAZY)
    @JoinColumn(name="id_bookDetails", insertable = false, updatable = false)
    private BookDetails bookDetails;

    @ManyToOne(cascade= {CascadeType.REFRESH}, fetch=FetchType.LAZY)
    @JoinColumn(name="id_addressUser", insertable = false, updatable = false)
    private AddressUser addressUser;

    @ManyToOne(cascade= {CascadeType.REFRESH}, fetch=FetchType.LAZY)
    @JoinColumn(name="id_user", insertable = false, updatable = false)
    private User user;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getIdBookDetails() {
        return idBookDetails;
    }

    public void setIdBookDetails(long idBookDetails) {
        this.idBookDetails = idBookDetails;
    }

    public long getIdUser() {
        return idUser;
    }

    public void setIdUser(long idUser) {
        this.idUser = idUser;
    }

    public Timestamp getOrderData() {
        return orderData;
    }

    public void setOrderData(Timestamp orderData) {
        this.orderData = orderData;
    }

    public long getIdAddress() {
        return idAddress;
    }

    public void setIdAddress(long idAddress) {
        this.idAddress = idAddress;
    }

    public BookDetails getBookDetails() {
        return bookDetails;
    }

    public void setBookDetails(BookDetails bookDetails) {
        this.bookDetails = bookDetails;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public AddressUser getAddressUser() {
        return addressUser;
    }

    public void setAddressUser(AddressUser addressUser) {
        this.addressUser = addressUser;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Order order = (Order) o;

        if (id != order.id) return false;
        if (idBookDetails != order.idBookDetails) return false;
        if (idUser != order.idUser) return false;
        if (idAddress != order.idAddress) return false;
        if (orderData != null ? !orderData.equals(order.orderData) : order.orderData != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (int) (idBookDetails ^ (idBookDetails >>> 32));
        result = 31 * result + (int) (idUser ^ (idUser >>> 32));
        result = 31 * result + (orderData != null ? orderData.hashCode() : 0);
        result = 31 * result + (int) (idAddress ^ (idAddress >>> 32));
        return result;
    }
}
