package com.dashaspivak.publishinghouse.dao;

import com.dashaspivak.publishinghouse.model.Series;

import java.util.List;

public interface SeriesDao {
    List<Series> findAll();
    Series findById(long id);
    Series findByName(String name);
    void create(Series series);
    void update(Series series);
    void remove(Series series);
}
