package com.dashaspivak.publishinghouse.dao.impl;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.dashaspivak.publishinghouse.model.Language;
import com.dashaspivak.publishinghouse.dao.LanguageDao;

import java.util.List;

@Transactional
@Repository
public class LanguageDaoImpl implements LanguageDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Language> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(Language.class).list();
    }

    @Override
    public Language findById(long id) {
        return (Language)sessionFactory.getCurrentSession().get(Language.class, id);
    }

    @Override
    public void create(Language entity) {
        sessionFactory.getCurrentSession().save(entity);
    }

    @Override
    public void update(Language entity) {
        sessionFactory.getCurrentSession().update(entity);
    }

    @Override
    public void remove(Language entity) {
        sessionFactory.getCurrentSession().delete(entity);
    }

    @Override
    public Language findByLanguage(String language) {
        String lastNameQuery = "FROM Language WHERE language = :language";
        Query query = sessionFactory.getCurrentSession().createQuery(lastNameQuery);
        query.setString("language", language);
        return (Language)query.uniqueResult();
    }
}
