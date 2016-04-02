package com.dashaspivak.publishinghouse.ws.rest;

import com.dashaspivak.publishinghouse.dao.AddressUserDao;
import com.dashaspivak.publishinghouse.model.AddressUser;
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
@RequestMapping(value = "/addressUser")
public class AddressUserRestController {
    @Autowired
    private AddressUserDao addressUserDao;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<AddressUser>> findAll() {
        List<AddressUser> addressUsers = addressUserDao.findAll();
        if (addressUsers.size() == 0) {
            return new ResponseEntity<List<AddressUser>>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<AddressUser>>(addressUserDao.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<AddressUser> findById(@PathVariable long id) {
        return new ResponseEntity<AddressUser>(addressUserDao.findById(id), HttpStatus.FOUND);
    }

}
