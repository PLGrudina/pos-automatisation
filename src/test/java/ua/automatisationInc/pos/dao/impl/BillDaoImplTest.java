package ua.automatisationInc.pos.dao.impl;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import ua.automatisationInc.pos.config.PersistenceConfig;
import ua.automatisationInc.pos.dao.BillDao;

import static org.junit.Assert.*;

/**
 * Created by PavelGrudina on 05.04.2017.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = PersistenceConfig.class)
public class BillDaoImplTest {

    @Autowired
    BillDao billDao;

    @Before
    public void setUp() throws Exception {

    }

    @Test
    public void save() throws Exception {

    }

    @Test
    public void delete() throws Exception {

    }

    @Test
    public void deleteByDate() throws Exception {

    }

    @Test
    public void findById() throws Exception {

    }

    @Test
    public void findAll() throws Exception {

    }

    @Test
    public void findByDate() throws Exception {

    }

}