package com.dashaspivak.publishinghouse.dao.impl;

import com.dashaspivak.publishinghouse.model.User;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.dashaspivak.publishinghouse.dao.UserDao;

import java.util.List;

@Transactional
@Repository
public class UserDaoImpl implements UserDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<User> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(User.class).list();
    }

    @Override
    public User findById(long id) {
        return (User)sessionFactory.getCurrentSession().get(User.class, id);
    }

    @Override
    public void create(User entity) {
        sessionFactory.getCurrentSession().save(entity);
    }

    @Override
    public void update(User entity) {
        sessionFactory.getCurrentSession().update(entity);
    }

    @Override
    public void remove(User entity) {
        sessionFactory.getCurrentSession().delete(entity);
    }

    @Override
    public User findByEmail(String email) {
        String emailQuery = "FROM user WHERE email = :email";
        Query query = sessionFactory.getCurrentSession().createQuery(emailQuery);
        query.setString("email", email);
        return (User)query.uniqueResult();
    }
}
