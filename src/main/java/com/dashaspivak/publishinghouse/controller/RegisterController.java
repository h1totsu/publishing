package com.dashaspivak.publishinghouse.controller;

import com.dashaspivak.publishinghouse.dao.UserDao;
import com.dashaspivak.publishinghouse.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * Created by Kokosha on 26.04.2016.
 */
@Controller
@RequestMapping(value = "/register")
public class RegisterController {
    @RequestMapping(method = RequestMethod.GET)
    public String viewRegistration(Map<String, Object> model) {
        User userForm = new User();
        model.put("userForm", userForm);

        return "layout/registration";
    }

    @Autowired
    UserDao userDao;
    @RequestMapping(method = RequestMethod.POST)
    public String processRegistration(@ModelAttribute("userForm") User user,
                                      Map<String, Object> model) {

        System.out.println("firstname: " + user.getFirstname());
        System.out.println("lastname: " + user.getLastname());
        System.out.println("email: " + user.getEmail());
        System.out.println("password: " + user.getPassword());

        userDao.create(user);

        return "success";
    }
}
