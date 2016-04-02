package com.dashaspivak.publishinghouse.dao.impl;

import com.dashaspivak.publishinghouse.model.AddressUser;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.dashaspivak.publishinghouse.dao.AddressUserDao;

import java.util.List;

@Transactional
@Repository
public class AddressUserDaoImpl implements AddressUserDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<AddressUser> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(AddressUser.class).list();
    }

    @Override
    public AddressUser findById(long id) {
        return (AddressUser)sessionFactory.getCurrentSession().get(AddressUser.class, id);
    }

    @Override
    public void create(AddressUser entity) {
        sessionFactory.getCurrentSession().save(entity);
    }

    @Override
    public void update(AddressUser entity) {
        sessionFactory.getCurrentSession().update(entity);
    }

    @Override
    public void remove(AddressUser entity) {
        sessionFactory.getCurrentSession().delete(entity);
    }
}
