package com.dashaspivak.publishinghouse.ws.rest;

import com.dashaspivak.publishinghouse.dao.OrderDao;
import com.dashaspivak.publishinghouse.model.Order;
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
@RequestMapping(value = "/order")
public class OrderRestController {

    @Autowired
    private OrderDao orderDao;

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<List<Order>> findAll() {
        List<Order> orders = orderDao.findAll();
        if (orders.size() == 0) {
            return new ResponseEntity<List<Order>>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<List<Order>>(orderDao.findAll(), HttpStatus.OK);
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<Order> findById(@PathVariable long id) {
        return new ResponseEntity<Order>(orderDao.findById(id), HttpStatus.FOUND);
    }

}
