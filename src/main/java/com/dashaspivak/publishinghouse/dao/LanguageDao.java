package com.dashaspivak.publishinghouse.dao;

import com.dashaspivak.publishinghouse.model.Language;

import java.util.List;

public interface LanguageDao {
    List<Language> findAll();
    Language findById(long id);
    Language findByLanguage(String language);
    void create(Language language);
    void update(Language language);
    void remove(Language language);
}
