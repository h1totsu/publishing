package com.dashaspivak.publishinghouse.ws.rest;

import com.dashaspivak.publishinghouse.dao.BookDao;
import com.dashaspivak.publishinghouse.model.Book;
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
@RequestMapping(value = "/book")
public class BookRestController {

    @Autowired
    private BookDao bookDao;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<Book>> findAll() {
        List<Book> books = bookDao.findAll();
        if (books.size() == 0) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(bookDao.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<Book> findById(@PathVariable long id) {
        return new ResponseEntity<>(bookDao.findById(id), HttpStatus.FOUND);
    }

    @RequestMapping(value = "/book", method = RequestMethod.GET)
    public ResponseEntity<Book> findByName(@PathVariable String book) {
        return new ResponseEntity<Book>(bookDao.findByName(book), HttpStatus.FOUND);
    }
}
