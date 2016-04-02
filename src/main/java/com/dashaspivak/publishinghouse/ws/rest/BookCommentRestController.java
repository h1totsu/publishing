package com.dashaspivak.publishinghouse.ws.rest;

import com.dashaspivak.publishinghouse.dao.BookCommentDao;
import com.dashaspivak.publishinghouse.model.BookComment;
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
@RequestMapping(value = "/bookComment")
public class BookCommentRestController {

    @Autowired
    private BookCommentDao bookCommentDao;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<BookComment>> findAll() {
        List<BookComment> bookComments = bookCommentDao.findAll();
        if (bookComments.size() == 0) {
            return new ResponseEntity<List<BookComment>>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<BookComment>>(bookCommentDao.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<BookComment> findById(@PathVariable long id) {
        return new ResponseEntity<BookComment>(bookCommentDao.findById(id), HttpStatus.FOUND);
    }

}
