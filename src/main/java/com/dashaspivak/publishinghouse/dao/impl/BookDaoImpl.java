package com.dashaspivak.publishinghouse.dao.impl;

import com.dashaspivak.publishinghouse.model.Book;
import com.dashaspivak.publishinghouse.model.Language;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.dashaspivak.publishinghouse.dao.BookDao;

import java.util.List;

@Transactional
@Repository
public class BookDaoImpl implements BookDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Book> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(Book.class).list();
    }
    @Override
    public Book findById(long id) {
        return (Book)sessionFactory.getCurrentSession().get(Book.class, id);
    }

    @Override
    public void create(Book entity) {
        sessionFactory.getCurrentSession().save(entity);
    }

    @Override
    public void update(Book entity) {
        sessionFactory.getCurrentSession().update(entity);
    }

    @Override
    public void remove(Book entity) {
        sessionFactory.getCurrentSession().delete(entity);
    }

    @Override
    public Book findByName(String book) {
        String bookQuery = "FROM Book WHERE book = :book";
        Query query = sessionFactory.getCurrentSession().createQuery(bookQuery);
        query.setString("book", book);
        return (Book)query.uniqueResult();
    }

//    @Override
//    public List<Language> getLanguage(long idBook){
//        String bookQuery = "FROM Language WHERE idBook = :idBook";
//        Query query = sessionFactory.getCurrentSession().createQuery(bookQuery);
//        query.setLong("idBook", idBook);
//        return query.list();
//    }
}
