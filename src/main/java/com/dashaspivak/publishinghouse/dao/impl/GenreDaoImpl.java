package com.dashaspivak.publishinghouse.dao.impl;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.dashaspivak.publishinghouse.dao.GenreDao;
import com.dashaspivak.publishinghouse.model.Genre;

import java.util.List;

@Transactional
@Repository
public class GenreDaoImpl implements GenreDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Genre> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(Genre.class).list();
    }

    @Override
    public Genre findById(long id) {
        return (Genre)sessionFactory.getCurrentSession().get(Genre.class, id);
    }

    @Override
    public void create(Genre entity) {
        sessionFactory.getCurrentSession().save(entity);
    }

    @Override
    public void update(Genre entity) {
        sessionFactory.getCurrentSession().update(entity);
    }

    @Override
    public void remove(Genre entity) {
        sessionFactory.getCurrentSession().delete(entity);
    }

    @Override
    public Genre findByGenre(String genre) {
        String genreQuery = "FROM genre WHERE genre = :genre";
        Query query = sessionFactory.getCurrentSession().createQuery(genreQuery);
        query.setString("genre", genre);
        return (Genre)query.uniqueResult();
    }


}
