package com.dashaspivak.publishinghouse.dao;

import com.dashaspivak.publishinghouse.model.AddressUser;

import java.util.List;

public interface AddressUserDao {
    List<AddressUser> findAll();
    AddressUser findById(long id);
    void create(AddressUser addressUser);
    void update(AddressUser addressUser);
    void remove(AddressUser addressUser);
}
