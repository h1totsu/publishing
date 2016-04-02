package com.dashaspivak.publishinghouse.dao.impl;

import com.dashaspivak.publishinghouse.dao.AuthorDao;
import com.dashaspivak.publishinghouse.model.Author;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Kokosha on 17.02.2016.
 */

@Transactional
@Repository
public class AuthorDaoImpl implements AuthorDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Author> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(Author.class).list();
    }

    @Override
    public Author findById(long id) {
        return (Author)sessionFactory.getCurrentSession().get(Author.class, id);
    }

    @Override
    public void create(Author entity) {
        sessionFactory.getCurrentSession().save(entity);
    }

    @Override
    public void update(Author entity) {
        sessionFactory.getCurrentSession().update(entity);
    }

    @Override
    public void remove(Author entity) {
        sessionFactory.getCurrentSession().delete(entity);
    }

    @Override
    public Author findByLastName(String lastname) {
        String lastNameQuery = "FROM author WHERE lastname = :lastname";
        Query query = sessionFactory.getCurrentSession().createQuery(lastNameQuery);
        query.setString("lastname", lastname);
        return (Author)query.uniqueResult();
    }

}
