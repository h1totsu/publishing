package com.dashaspivak.publishinghouse.dao;

import java.util.List;
import com.dashaspivak.publishinghouse.model.Book;
import com.dashaspivak.publishinghouse.model.Language;

/**
 * Created by Kokosha on 10.03.2016.
 */
public interface BookDao {
    List<Book> findAll();
    Book findById(long id);
    Book findByName(String book);
    void create(Book book);
    void update(Book book);
    void remove(Book book);
//    List<Language> getLanguage(long idBook);
}

