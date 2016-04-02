package com.dashaspivak.publishinghouse.dao;

import com.dashaspivak.publishinghouse.model.Genre;

import java.util.List;
public interface GenreDao {
    List<Genre> findAll();
    Genre findById(long id);
    Genre findByGenre(String genre);
    void create(Genre genre);
    void update(Genre genre);
    void remove(Genre genre);
}
