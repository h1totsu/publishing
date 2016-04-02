package com.dashaspivak.publishinghouse.ws.rest;

import com.dashaspivak.publishinghouse.dao.UserDao;
import com.dashaspivak.publishinghouse.model.User;
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
@RequestMapping(value = "/user")
public class UserRestController {
    @Autowired
    private UserDao userDao;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<User>> findAll() {
        List<User> users = userDao.findAll();
        if (users.size() == 0) {
            return new ResponseEntity<List<User>>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<User>>(userDao.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<User> findById(@PathVariable long id) {
        return new ResponseEntity<User>(userDao.findById(id), HttpStatus.FOUND);
    }

    @RequestMapping(value = "/{email}", method = RequestMethod.GET)
    public ResponseEntity<User> findByEmail (@PathVariable String email) {
        return new ResponseEntity<User>(userDao.findByEmail(email), HttpStatus.FOUND);
    }
}
