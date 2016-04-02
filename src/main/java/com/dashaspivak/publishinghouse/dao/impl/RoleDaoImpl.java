package com.dashaspivak.publishinghouse.dao.impl;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.dashaspivak.publishinghouse.model.Role;
import com.dashaspivak.publishinghouse.dao.RoleDao;

import java.util.List;

@Transactional
@Repository
public class RoleDaoImpl implements RoleDao{

@Autowired
private SessionFactory sessionFactory;

    @Override
    public List<Role> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(Role.class).list();
    }

    @Override
    public Role findById(long id) {
        return (Role)sessionFactory.getCurrentSession().get(Role.class, id);
    }

    @Override
    public void create(Role entity) {
        sessionFactory.getCurrentSession().save(entity);
    }

    @Override
    public void update(Role entity) {
        sessionFactory.getCurrentSession().update(entity);
    }

    @Override
    public void remove(Role entity) {
        sessionFactory.getCurrentSession().delete(entity);
    }

    @Override
    public Role findByName(String roleName) {
        String roleNameQuery = "FROM role WHERE roleName = :roleName";
        Query query = sessionFactory.getCurrentSession().createQuery(roleNameQuery);
        query.setString("roleName", roleName);
        return (Role)query.uniqueResult();
    }
}