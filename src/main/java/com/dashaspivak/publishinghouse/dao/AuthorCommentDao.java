package com.dashaspivak.publishinghouse.dao;

import com.dashaspivak.publishinghouse.model.AuthorComment;

import java.util.List;

public interface AuthorCommentDao {
    List<AuthorComment> findAll();
    AuthorComment findById(long id);
    void create(AuthorComment comment);
    void update(AuthorComment comment);
    void remove(AuthorComment comment);
}
