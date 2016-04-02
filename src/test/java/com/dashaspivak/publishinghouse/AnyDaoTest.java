package com.dashaspivak.publishinghouse;

/**
 * Created by Kokosha on 22.03.2016.
 */

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.dashaspivak.publishinghouse.dao.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
        "classpath:spring-servlet-test.xml",
})
public class AnyDaoTest {

    @Autowired
    AuthorDao authorDao;

    @Test
    public void testDaoMethod() throws Exception {
       // System.out.println(authorDao.findById(1).getBookList().size());
        System.out.println(authorDao.findAll());
    }
}
