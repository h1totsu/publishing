package com.dashaspivak.publishinghouse.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.dashaspivak.publishinghouse.dao.AuthorCommentDao;
import com.dashaspivak.publishinghouse.model.AuthorComment;

import java.util.List;

/**
 * Created by Kokosha on 10.03.2016.
 */
@Transactional
@Repository
public class AuthorCommentDaoImpl implements AuthorCommentDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<AuthorComment> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(AuthorComment.class).list();
    }

    @Override
    public AuthorComment findById(long id) {
        return (AuthorComment)sessionFactory.getCurrentSession().get(AuthorComment.class, id);
    }

    @Override
    public void create(AuthorComment entity) {
        sessionFactory.getCurrentSession().save(entity);
    }

    @Override
    public void update(AuthorComment entity) {
        sessionFactory.getCurrentSession().update(entity);
    }

    @Override
    public void remove(AuthorComment entity) {
        sessionFactory.getCurrentSession().delete(entity);
    }

}
