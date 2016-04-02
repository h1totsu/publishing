package com.dashaspivak.publishinghouse.ws.rest;

import com.dashaspivak.publishinghouse.dao.LanguageDao;
import com.dashaspivak.publishinghouse.model.Language;
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
@RequestMapping(value = "/language")
public class LanguageRestController {
    @Autowired
    private LanguageDao languageDao;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<Language>> findAll() {
        List<Language> languages = languageDao.findAll();
        if (languages.size() == 0) {
            return new ResponseEntity<List<Language>>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<Language>>(languageDao.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<Language> findById(@PathVariable long id) {
        return new ResponseEntity<Language>(languageDao.findById(id), HttpStatus.FOUND);
    }

    @RequestMapping(value = "/{language}", method = RequestMethod.GET)
    public ResponseEntity<Language> findByLanguage(@PathVariable String language) {
        return new ResponseEntity<Language>(languageDao.findByLanguage(language), HttpStatus.FOUND);
    }
}
