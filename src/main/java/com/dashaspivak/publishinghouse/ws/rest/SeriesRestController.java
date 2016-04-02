package com.dashaspivak.publishinghouse.ws.rest;

import com.dashaspivak.publishinghouse.dao.SeriesDao;
import com.dashaspivak.publishinghouse.model.Series;
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
@RequestMapping(value = "/series")
public class SeriesRestController {

    @Autowired
    private SeriesDao seriesDao;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<Series>> findAll() {
        List<Series> series = seriesDao.findAll();
        if (series.size() == 0) {
            return new ResponseEntity<List<Series>>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<Series>>(seriesDao.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<Series> findById(@PathVariable long id) {
        return new ResponseEntity<Series>(seriesDao.findById(id), HttpStatus.FOUND);
    }

    @RequestMapping(value = "/{name}", method = RequestMethod.GET)
    public ResponseEntity<Series> findByName(@PathVariable String name) {
        return new ResponseEntity<Series>(seriesDao.findByName(name), HttpStatus.FOUND);
    }
}
