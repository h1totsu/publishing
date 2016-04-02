package com.dashaspivak.publishinghouse.dao;

import com.dashaspivak.publishinghouse.model.BookComment;

import java.util.List;

public interface BookCommentDao {
    List<BookComment> findAll();
    BookComment findById(long id);
    void create(BookComment comment);
    void update(BookComment comment);
    void remove(BookComment comment);
}
