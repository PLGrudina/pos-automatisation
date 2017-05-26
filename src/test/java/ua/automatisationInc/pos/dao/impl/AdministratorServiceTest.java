package ua.automatisationInc.pos.dao.impl;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;
import ua.automatisationInc.pos.config.PersistenceConfig;
import ua.automatisationInc.pos.dao.BillDao;
import ua.automatisationInc.pos.dao.DishDao;
import ua.automatisationInc.pos.dao.IngredientDao;
import ua.automatisationInc.pos.models.Bill;
import ua.automatisationInc.pos.models.Dish;
import ua.automatisationInc.pos.models.Ingredient;
import ua.automatisationInc.pos.services.AdministratorService;
import ua.automatisationInc.pos.services.impl.AdministratorServiceImpl;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by PavelGrudina on 26.05.2017.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(classes = {PersistenceConfig.class, AdministratorServiceImpl.class})
public class AdministratorServiceTest {

    @Autowired
    private AdministratorService administratorService;
    @Autowired
    private DishDao dishDao;
    @Autowired
    private IngredientDao ingredientDao;
    @Autowired
    private BillDao billDao;


    Ingredient meat;
    Ingredient cucumber;

    Dish burger;
    Dish cola;

    Bill first;
    Bill second;

    @Before
    @Transactional
    public void setUp() throws Exception {
        cucumber = new Ingredient();
        cucumber.setName("Cucumber");
        cucumber.setWeight(300);
        meat = new Ingredient();
        meat.setName("Meat");
        meat.setWeight(50);
        ingredientDao.save(meat);
        ingredientDao.save(cucumber);
        List<Ingredient> actualIngrList = new ArrayList<>();
        actualIngrList.add(cucumber);
        actualIngrList.add(meat);

    }

    @Test
    @Transactional
    public void getAllIngredients() throws Exception {

       Assert.assertTrue(administratorService.getAllIngredients().size() == 1);
    }

    @Test
    @Transactional
    public void getAllDishes () throws Exception {

    }

    @Test
    @Transactional
    public void getAllBills () throws Exception {

    }

    @Test
    @Transactional
    public void getIngredientStatus () throws Exception {

    }

    @Test
    @Transactional
    public void findById () throws Exception {

    }

    @Test
    @Transactional
    public void findByName () throws Exception {

    }

    @Test
    @Transactional
    public void saveIngredient () throws Exception {

    }

    @Test
    @Transactional
    public void deleteIngredientById () throws Exception {

    }

    @Test
    @Transactional
    public void saveDish () throws Exception {

    }

    @Test
    @Transactional
    public void deleteDishById () throws Exception {

    }
}
