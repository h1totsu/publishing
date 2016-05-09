package com.dashaspivak.publishinghouse.ws.rest;

import com.dashaspivak.publishinghouse.dao.BookDetailsDao;
import com.dashaspivak.publishinghouse.model.BookDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Created by Kokosha on 04.05.2016.
 */
@RestController
@RequestMapping(value = "/bookDetails")
public class BookDetailsRestController {

    @Autowired
    private BookDetailsDao bookDetailsDao;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<BookDetails>> findAll() {
        List<BookDetails> books = bookDetailsDao.findAll();
        if (books.size() == 0) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(bookDetailsDao.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<BookDetails> findById(@PathVariable("id") long id) {
        return new ResponseEntity<>(bookDetailsDao.findById(id), HttpStatus.FOUND);
    }

}
