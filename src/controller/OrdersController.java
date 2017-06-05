package controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.OrdersService;
import vo.Orders;


@Controller
public class OrdersController {
	@Autowired
	private OrdersService ordersService;

	@RequestMapping("/selectAllOrders")
	public String selectAll(Model model,Orders orders){
		model.addAttribute("allOrders",ordersService.selectAllOrders(orders));
		return "stockOrder";
	}

	
}
