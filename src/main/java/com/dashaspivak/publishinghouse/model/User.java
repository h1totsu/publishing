package com.dashaspivak.publishinghouse.model;

import javax.persistence.*;
import java.util.List;

/**
 * Created by Kokosha on 29.02.2016.
 */
@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;
    @Basic
    @Column(name = "firstname")
    private String firstname;
    @Basic
    @Column(name = "lastname")
    private String lastname;
    @Basic
    @Column(name = "email")
    private String email;
    @Basic
    @Column(name = "password")
    private String password;
    @Basic
    @Column(name = "password_salt")
    private String passwordSalt;
    @Basic
    @Column(name = "is_activated")
    private byte isActivated;
    @Basic
    @Column(name = "activation_token")
    private String activationToken;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="user")
    private List<Order> orderList;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="user")
    private List<AuthorMark> authorMarkList;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="user")
    private List<AuthorComment> authorCommentList;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="user")
    private List<BookMark> bookMarkList;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="user")
    private List<BookComment> bookCommentList;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="user")
    private List<LastSeen> lastSeenList;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy="user")
    private List<UserRole> userRoleList;


    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPasswordSalt() {
        return passwordSalt;
    }

    public void setPasswordSalt(String passwordSalt) {
        this.passwordSalt = passwordSalt;
    }

    public byte getIsActivated() {
        return isActivated;
    }

    public void setIsActivated(byte isActivated) {
        this.isActivated = isActivated;
    }

    public String getActivationToken() {
        return activationToken;
    }

    public void setActivationToken(String activationToken) {
        this.activationToken = activationToken;
    }

    public List<UserRole> getUserRoleList() {
        return userRoleList;
    }

    public void setUserRoleList(List<UserRole> userRoleList) {
        this.userRoleList = userRoleList;
    }

    public List<LastSeen> getLastSeenList() {
        return lastSeenList;
    }

    public void setLastSeenList(List<LastSeen> lastSeenList) {
        this.lastSeenList = lastSeenList;
    }

    public List<BookComment> getBookCommentList() {
        return bookCommentList;
    }

    public void setBookCommentList(List<BookComment> bookCommentList) {
        this.bookCommentList = bookCommentList;
    }

    public List<BookMark> getBookMarkList() {
        return bookMarkList;
    }

    public void setBookMarkList(List<BookMark> bookMarkList) {
        this.bookMarkList = bookMarkList;
    }

    public List<AuthorComment> getAuthorCommentList() {
        return authorCommentList;
    }

    public void setAuthorCommentList(List<AuthorComment> authorCommentList) {
        this.authorCommentList = authorCommentList;
    }

    public List<AuthorMark> getAuthorMarkList() {
        return authorMarkList;
    }

    public void setAuthorMarkList(List<AuthorMark> authorMarkList) {
        this.authorMarkList = authorMarkList;
    }

    public List<Order> getOrderList() {
        return orderList;
    }

    public void setOrderList(List<Order> orderList) {
        this.orderList = orderList;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        User user = (User) o;

        if (id != user.id) return false;
        if (isActivated != user.isActivated) return false;
        if (firstname != null ? !firstname.equals(user.firstname) : user.firstname != null) return false;
        if (lastname != null ? !lastname.equals(user.lastname) : user.lastname != null) return false;
        if (email != null ? !email.equals(user.email) : user.email != null) return false;
        if (password != null ? !password.equals(user.password) : user.password != null) return false;
        if (passwordSalt != null ? !passwordSalt.equals(user.passwordSalt) : user.passwordSalt != null) return false;
        if (activationToken != null ? !activationToken.equals(user.activationToken) : user.activationToken != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = (int) (id ^ (id >>> 32));
        result = 31 * result + (firstname != null ? firstname.hashCode() : 0);
        result = 31 * result + (lastname != null ? lastname.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (passwordSalt != null ? passwordSalt.hashCode() : 0);
        result = 31 * result + (int) isActivated;
        result = 31 * result + (activationToken != null ? activationToken.hashCode() : 0);
        return result;
    }
}
