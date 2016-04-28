//package com.dashaspivak.publishinghouse.service.impl;
//
//import com.dashaspivak.publishinghouse.dao.UserDao;
//import com.dashaspivak.publishinghouse.model.User;
//import com.dashaspivak.publishinghouse.service.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.transaction.annotation.Transactional;
//
//import java.util.List;
//
///**
// * Created by Kokosha on 28.04.2016.
// */
//public class UserServiceImpl implements UserService{
//
//    @Autowired
//    private UserDao userDao;
//
//    @Transactional
//    public void findById(Long id){
//        userDao.findById(id);
//    }
//
//    @Transactional
//    public List <User> findAll(){
//        return userDao.findAll();
//    }
//
////    @Transactional
////    public void findByEmail(String email){
////        userDao.findByEmail(email);
////    }
//}
