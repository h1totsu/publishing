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
        model.addAttribute("test", authorDao.findAll());
        return "template";
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

    @RequestMapping(value = "/drama", method = RequestMethod.GET)
      String getDrama(Model model) {
        return "/genre/drama";
    }

    @RequestMapping(value = "/detective", method = RequestMethod.GET)
    String getDetective(Model model) {
        return "/genre/detective";
    }

    @RequestMapping(value = "/fairyTale", method = RequestMethod.GET)
    String getFairyTale(Model model) {
        return "/genre/fairyTale";
    }

    @RequestMapping(value = "/fantasy", method = RequestMethod.GET)
    String getFantasy(Model model) {
        return "/genre/fantasy";
    }

    @RequestMapping(value = "/fiction", method = RequestMethod.GET)
    String getFiction(Model model) {
        return "/genre/fiction";
    }

    @RequestMapping(value = "/magicalRealism", method = RequestMethod.GET)
    String getMagicalRealism(Model model) {
        return "/genre/magicalRealism";
    }

    @RequestMapping(value = "/mystery", method = RequestMethod.GET)
    String getMystery(Model model) {
        return "/genre/mystery";
    }

    @RequestMapping(value = "/realisticFiction", method = RequestMethod.GET)
    String getRealisticFiction(Model model) {
        return "/genre/realisticFiction";
    }

    @RequestMapping(value = "/romanceNovel", method = RequestMethod.GET)
     String getRomanceNovel(Model model) {
        return "/genre/romanceNovel";
    }

    @RequestMapping(value = "/shortStory", method = RequestMethod.GET)
    String getShortStory(Model model) {
        return "/genre/shortStory";
    }

    @RequestMapping(value = "/thriller", method = RequestMethod.GET)
    String getThriller(Model model) {
        return "/genre/thriller";
    }

    @RequestMapping(value = "/horror", method = RequestMethod.GET)
     String getHorror(Model model) {
        return "/genre/horror";
    }

    @RequestMapping(value = "/guidoBrunetti", method = RequestMethod.GET)
    String getGuidoBrunetti(Model model) {
        return "/series/guidoBrunetti";
    }

     @RequestMapping(value = "/seanDuffy", method = RequestMethod.GET)
    String getSeanDuffy(Model model) {
        return "/series/seanDuffy";
    }

     @RequestMapping(value = "/adambergCommissioner", method = RequestMethod.GET)
    String getAdambergCommissioner(Model model) {
        return "/series/adambergCommissioner";
    }

    @RequestMapping(value = "/inspectorLynley", method = RequestMethod.GET)
    String getInspectorLynley(Model model) {
        return "/series/inspectorLynley";
    }

    @RequestMapping(value = "/kateBrennigan", method = RequestMethod.GET)
    String getKateBrennigan(Model model) {
        return "/series/kateBrennigan";
    }

     @RequestMapping(value = "/kurtWallander", method = RequestMethod.GET)
    String getKurtWallander(Model model) {
        return "/series/kurtWallander";
    }

    @RequestMapping(value = "/harryHole", method = RequestMethod.GET)
    String getHarryHole(Model model) {
        return "/series/harryHole";
    }

     @RequestMapping(value = "/neilCarey", method = RequestMethod.GET)
    String getNeilCarey(Model model) {
        return "/series/neilCarey";
    }

     @RequestMapping(value = "/javierFalcon", method = RequestMethod.GET)
    String getJavierFalcon(Model model) {
        return "/series/javierFalcon";
    }

    @RequestMapping(value = "/davidSloane", method = RequestMethod.GET)
    String getDavidSloane(Model model) {
        return "/series/davidSloane";
    }

    @RequestMapping(value = "/inspectorRebus", method = RequestMethod.GET)
    String getInspectorRebus(Model model) {
        return "/series/inspectorRebus";
    }

     @RequestMapping(value = "/bruce", method = RequestMethod.GET)
    String getBruce(Model model) {
        return "/series/bruce";
    }

}
