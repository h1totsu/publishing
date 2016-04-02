package com.dashaspivak.publishinghouse.ws.rest;

import com.dashaspivak.publishinghouse.dao.GenreDao;
import com.dashaspivak.publishinghouse.model.Genre;
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
@RequestMapping(value = "/genre")
public class GenreRestController {

    @Autowired
    private GenreDao genreDao;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<Genre>> findAll() {
        List<Genre> genres = genreDao.findAll();
        if (genres.size() == 0) {
            return new ResponseEntity<List<Genre>>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<Genre>>(genreDao.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<Genre> findById(@PathVariable long id) {
        return new ResponseEntity<Genre>(genreDao.findById(id), HttpStatus.FOUND);
    }

    @RequestMapping(value = "/{genre}", method = RequestMethod.GET)
    public ResponseEntity<Genre> findByGenre(@PathVariable String genre) {
        return new ResponseEntity<Genre>(genreDao.findByGenre(genre), HttpStatus.FOUND);
    }
}
