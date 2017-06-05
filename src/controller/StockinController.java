package controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.StockinService;
import vo.Stockin;

@Controller
public class StockinController {
	@Autowired
	private StockinService stockinService;

	@RequestMapping("/selectAllStockin")
	public String selectAll(Model model,Stockin stockin){
		model.addAttribute("allStockin",stockinService.selectAllStockin(stockin));
		return "stockIn";
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
