package com.dashaspivak.publishinghouse.dao;

import com.dashaspivak.publishinghouse.model.BookDetails;

import java.util.List;

/**
 * Created by Kokosha on 04.05.2016.
 */
public interface BookDetailsDao {
    List<BookDetails> findAll();
    BookDetails findById(long id);
    void create(BookDetails bookDetails);
    void update(BookDetails bookDetails);
    void remove(BookDetails bookDetails);
}
