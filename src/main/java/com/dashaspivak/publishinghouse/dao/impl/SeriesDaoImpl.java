package com.dashaspivak.publishinghouse.dao.impl;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.dashaspivak.publishinghouse.dao.SeriesDao;
import com.dashaspivak.publishinghouse.model.Series;

import java.util.List;

@Transactional
@Repository
public class SeriesDaoImpl implements SeriesDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Series> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(Series.class).list();
    }
    @Override
    public Series findById(long id) {
        return (Series)sessionFactory.getCurrentSession().get(Series.class, id);
    }

    @Override
    public void create(Series entity) {
        sessionFactory.getCurrentSession().save(entity);
    }

    @Override
    public void update(Series entity) {
        sessionFactory.getCurrentSession().update(entity);
    }

    @Override
    public void remove(Series entity) {
        sessionFactory.getCurrentSession().delete(entity);
    }

    @Override
    public Series findByName(String name) {
        String nameQuery = "FROM series WHERE name = :name";
        Query query = sessionFactory.getCurrentSession().createQuery(nameQuery);
        query.setString("name", name);
        return (Series)query.uniqueResult();
    }

}
