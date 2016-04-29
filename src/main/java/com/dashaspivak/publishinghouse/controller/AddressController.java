package com.dashaspivak.publishinghouse.controller;

import com.dashaspivak.publishinghouse.dao.AddressUserDao;
import com.dashaspivak.publishinghouse.model.AddressUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

/**
 * Created by Kokosha on 28.04.2016.
 */
@Controller
@RequestMapping(value = "/address")
public class AddressController {
        @RequestMapping(method = RequestMethod.GET)
        public String viewAdrressUser(Map<String, Object> model) {
            AddressUser userAddress = new AddressUser();
            model.put("userAddress", userAddress);

            return "layout/address";
        }

        @Autowired
        AddressUserDao addressUserDao;
        @RequestMapping(method = RequestMethod.POST)
        public String processAddressUser(@ModelAttribute("userAddress") AddressUser addressUser,
                                          Map<String, Object> model) {

            System.out.println("city: " + addressUser.getCity());
            System.out.println("region: " + addressUser.getRegion());
            System.out.println("street: " + addressUser.getStreet());
            System.out.println("house: " + addressUser.getHouse());
            System.out.println("flat: " + addressUser.getFlat());
            System.out.println("zip: " + addressUser.getZip());

            addressUserDao.create(addressUser);

            return "layout/addressSuccess";
        }
}
