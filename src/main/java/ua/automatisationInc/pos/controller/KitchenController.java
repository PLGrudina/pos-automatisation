package ua.automatisationInc.pos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import ua.automatisationInc.pos.dao.BillDao;
import ua.automatisationInc.pos.dao.impl.BillDaoImpl;
import ua.automatisationInc.pos.models.Bill;
import ua.automatisationInc.pos.models.Dish;
import ua.automatisationInc.pos.models.enums.DishType;
import ua.automatisationInc.pos.services.CashierService;
import ua.automatisationInc.pos.services.KitchenService;
import ua.automatisationInc.pos.services.impl.CashierServiceImpl;

import java.time.LocalDate;
import java.util.List;

@Controller
public class KitchenController {
    @Autowired
    KitchenService kitchenService;
    @RequestMapping(path = "/kitchen", method = RequestMethod.GET)
    public String getKitchenPage(Model model) {
        List<Bill> bills = kitchenService.showAllOrders();
        model.addAttribute("bills", bills);
        return "/kitchen";
    }

}
