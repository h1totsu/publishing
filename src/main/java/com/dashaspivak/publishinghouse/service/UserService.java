package com.dashaspivak.publishinghouse.service;

import com.dashaspivak.publishinghouse.model.User;

import java.util.List;

/**
 * Created by Kokosha on 28.04.2016.
 */
public interface UserService {
    List<User> findAll();
    User findById(long id);
    User findByEmail(String email);
    void create(User user);
    void update(User user);
    void remove(User user);
}
