package com.dashaspivak.publishinghouse.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.dashaspivak.publishinghouse.dao.BookCommentDao;
import com.dashaspivak.publishinghouse.model.BookComment;
import java.util.List;

@Transactional
@Repository
public class BookCommentDaoImpl implements BookCommentDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<BookComment> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(BookComment.class).list();
    }
    @Override
    public BookComment findById(long id) {
        return (BookComment)sessionFactory.getCurrentSession().get(BookComment.class, id);
    }

    @Override
    public void create(BookComment entity) {
        sessionFactory.getCurrentSession().save(entity);
    }

    @Override
    public void update(BookComment entity) {
        sessionFactory.getCurrentSession().update(entity);
    }

    @Override
    public void remove(BookComment entity) {
        sessionFactory.getCurrentSession().delete(entity);
    }

}
