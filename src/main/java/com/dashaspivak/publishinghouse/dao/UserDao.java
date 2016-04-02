package com.dashaspivak.publishinghouse.dao;

import com.dashaspivak.publishinghouse.model.User;

import java.util.List;
public interface UserDao {
    List<User> findAll();
    User findById(long id);
    User findByEmail(String email);
    void create(User user);
    void update(User user);
    void remove(User user);
}
