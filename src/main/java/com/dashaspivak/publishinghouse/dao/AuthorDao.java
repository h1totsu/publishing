package com.dashaspivak.publishinghouse.dao;

import com.dashaspivak.publishinghouse.model.Author;

import java.util.List;

/**
 * Created by Kokosha on 17.02.2016.
 */
public interface AuthorDao {
    List<Author> findAll();
    Author findById(long id);
    Author findByLastName(String lastname);
    void create(Author author);
    void update(Author author);
    void remove(Author author);
}
