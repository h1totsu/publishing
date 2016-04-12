package com.dashaspivak.publishinghouse.controller;

import com.dashaspivak.publishinghouse.dao.AuthorDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Kokosha on 17.02.2016.
 */
@Controller
public class MainController {

    @Autowired
    AuthorDao authorDao;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    String getMain(Model model) {
//        model.addAttribute("test", authorDao.findAll());
        return "test";
    }


    @RequestMapping(value = "/bcatalog", method = RequestMethod.GET)
    String getBooksCatalog(Model model) {
        return "/bookCatalog";
    }

    @RequestMapping(value = "/apage", method = RequestMethod.GET)
    String getAuthorsCatalog(Model model) {
        return "/authorPage";
    }

    // @RequestMapping(value = "/ccatalog", method = RequestMethod.GET)
    // String getSeriesCatalog(Model model){
    //   return "bookpage";
    //  }

    @RequestMapping(value = "/acatalog", method = RequestMethod.GET)
    String getGenreCatalog(Model model) {
        return "authorCatalog";
    }

    @RequestMapping(value = "/bpage", method = RequestMethod.GET)
    String getBookPage(Model model) {
        return "bookPage";
    }

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    String getHome(Model model) {
        return "index";
    }

    @RequestMapping(value = "/genreCat", method = RequestMethod.GET)
    String getGenre(Model model) {
        return "genre";
    }

    // change
    @RequestMapping(value = "/seriess", method = RequestMethod.GET)
    String getSeries(Model model) {
        return "series";
    }

    @RequestMapping(value = "/seriesOne", method = RequestMethod.GET)
    String getSeriesPage(Model model) {
        return "seriesPage";
    }

    @RequestMapping(value = "/newBooks", method = RequestMethod.GET)
    String getNewBooks(Model model) {
        return "newBook";
    }

}
