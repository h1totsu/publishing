package com.dashaspivak.publishinghouse.ws.rest;

import com.dashaspivak.publishinghouse.dao.AuthorCommentDao;
import com.dashaspivak.publishinghouse.model.AuthorComment;
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
@RequestMapping(value = "/authorComment")
public class AuthorCommentRestController {

    @Autowired
    private AuthorCommentDao authorCommentDao;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<AuthorComment>> findAll() {
        List<AuthorComment> authorComments = authorCommentDao.findAll();
        if (authorComments.size() == 0) {
            return new ResponseEntity<List<AuthorComment>>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<AuthorComment>>(authorCommentDao.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<AuthorComment> findById(@PathVariable long id) {
        return new ResponseEntity<AuthorComment>(authorCommentDao.findById(id), HttpStatus.FOUND);
    }

}
