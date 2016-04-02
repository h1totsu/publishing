package com.dashaspivak.publishinghouse.dao;

import com.dashaspivak.publishinghouse.model.Order;

import java.util.List;

public interface OrderDao {
    List<Order> findAll();
    Order findById(long id);
    void create(Order order);
    void update(Order order);
    void remove(Order order);
}
