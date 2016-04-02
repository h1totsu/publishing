package com.dashaspivak.publishinghouse.ws.rest;

import com.dashaspivak.publishinghouse.dao.AuthorDao;
import com.dashaspivak.publishinghouse.model.Author;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Kokosha on 17.02.2016.
 */

@RestController
@RequestMapping(value = "/author")
public class AuthorRestController {

    @Autowired
    private AuthorDao authorDao;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<Author>> findAll() {
        List<Author> authors = authorDao.findAll();
        if (authors.size() == 0) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(authorDao.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<Author> findById(@PathVariable long id) {
        return new ResponseEntity<>(authorDao.findById(id), HttpStatus.FOUND);
    }

    @RequestMapping(value = "/name/{lastname}", method = RequestMethod.GET)
    public ResponseEntity<Author> findByName(@PathVariable String lastname) {
        return new ResponseEntity<>(authorDao.findByLastName(lastname), HttpStatus.FOUND);
    }
}
