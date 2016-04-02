package com.dashaspivak.publishinghouse.dao.impl;

import com.dashaspivak.publishinghouse.model.Order;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.dashaspivak.publishinghouse.dao.OrderDao;

import java.util.List;

/**
 * Created by Kokosha on 10.03.2016.
 */
@Transactional
@Repository
public class OrderDaoImpl implements OrderDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Order> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(Order.class).list();
    }

    @Override
    public Order findById(long id) {
        return (Order)sessionFactory.getCurrentSession().get(Order.class, id);
    }

    @Override
    public void create(Order entity) {
        sessionFactory.getCurrentSession().save(entity);
    }

    @Override
    public void update(Order entity) {
        sessionFactory.getCurrentSession().update(entity);
    }

    @Override
    public void remove(Order entity) {
        sessionFactory.getCurrentSession().delete(entity);
    }

}
