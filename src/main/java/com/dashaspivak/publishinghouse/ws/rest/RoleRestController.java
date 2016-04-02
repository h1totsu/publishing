package com.dashaspivak.publishinghouse.ws.rest;

import com.dashaspivak.publishinghouse.dao.RoleDao;
import com.dashaspivak.publishinghouse.model.Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Kokosha on 21.03.2016.
 */
@RestController
@RequestMapping(value = "/role")
public class RoleRestController {
    @Autowired
    private RoleDao roleDao;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<Role>> findAll() {
        List<Role> roles = roleDao.findAll();
        if (roles.size() == 0) {
            return new ResponseEntity<List<Role>>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<Role>>(roleDao.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<Role> findById(@PathVariable long id) {
        return new ResponseEntity<Role>(roleDao.findById(id), HttpStatus.FOUND);
    }

    @RequestMapping(value = "/{role}", method = RequestMethod.GET)
    public ResponseEntity<Role> findByName(@PathVariable String roleName) {
        return new ResponseEntity<Role>(roleDao.findByName(roleName), HttpStatus.FOUND);
    }
}
