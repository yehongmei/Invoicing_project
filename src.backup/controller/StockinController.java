package controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import service.CustomerService;
import service.EmployeeService;
import service.MerchandiseService;
import service.StockinService;
import vo.Stockin;

@Controller
public class StockinController {
	@Autowired
	private StockinService stockinService;
	@Autowired
	private CustomerService customerService;
	@Autowired
	private EmployeeService employeeService;
	@Autowired
	private MerchandiseService merchandiseService;
	
	@RequestMapping("/selectAllStockin")
	public String selectAll(Model model,Stockin stockin){
		model.addAttribute("allStockin",stockinService.selectAllStockin(stockin));
		return "stockIn";
	}
	
	/*添加进货单前的准备工�?/
	@RequestMapping("/preAddStockInOrder")
	public String preAddOrder(Model model){
		model.addAttribute("customerNames",customerService.selectAll());
		model.addAttribute("employeeNames",employeeService.selectAll());
		model.addAttribute("merchandiseNames",merchandiseService.selectAll());
		return "stockIn-insert";
	}
	
	/*添加进货�?/
	@RequestMapping("/addStockInOrder")
	public String addOrder(Stockin stockin,Model model){
		if(stockinService.insertStockin(stockin)){
			model.addAttribute("stockinResult", "添加进货单成�?);
		}else{
			model.addAttribute("stockinResult", "添加进货单失�?);
		}
		return "stockIn-insert-result";
	}
	
	/*查询�?��订货单，为了修改做准�?/
	@RequestMapping("/selectStockInOrder")
	public String selectStockInOrder(Integer sid,Model model){
		model.addAttribute("customerNames",customerService.selectAll());
		model.addAttribute("employeeNames",employeeService.selectAll());
		model.addAttribute("merchandiseNames",merchandiseService.selectAll());
		model.addAttribute("stockin", stockinService.selectStockin(sid));
		return "stockIn-update";
	}
	/*修改订货�?/
	@RequestMapping("/updateStockInOrder")
	public String StockInOrder(Stockin stockin){
		this.stockinService.updateStockin(stockin);
		return "home";
	}
	
	/*删除订货�?/
	@RequestMapping("/deleteStockInOrder")
	public String StockInOrder(Integer sid){
		stockinService.deleteStockin(sid);
		return "home";
	}
	
/*	@RequestMapping("/selectAllCustomer")
	public String selectAllCustomern(Model model){
		model.addAttribute("allStockin",stockinService.selectAllCutomer());
		return "stockIn-insert";
	}
	@RequestMapping("/selectAllEmployee")
	public String selectAllEmployee(Model model){
		model.addAttribute("allStockin",stockinService.selectAllEmployee());
		return "stockIn-insert";
	}
	@RequestMapping("/selectAllMerchandise")
	public String selectAllMerchandise(Model model){
		model.addAttribute("allStockin",stockinService.selectAllMerchandise());
		return "stockIn-insert";
	}*/
	
}
