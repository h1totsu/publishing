package com.dashaspivak.publishinghouse.dao;

import com.dashaspivak.publishinghouse.model.Role;

import java.util.List;

public interface RoleDao {
    List<Role> findAll();
    Role findById(long id);
    Role findByName(String roleName);
    void create(Role role);
    void update(Role role);
    void remove(Role role);
}
