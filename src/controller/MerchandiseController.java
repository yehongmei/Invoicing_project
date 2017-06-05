package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.MerchandiseService;

import vo.Merchandise;
@Controller
public class MerchandiseController {
	@Autowired
	private MerchandiseService merchandiseService;

	@RequestMapping("/merchandiseRegister")
	public String register(Merchandise merchandise, Model model) {
		if (merchandiseService.register(merchandise)) {
			model.addAttribute("registerInfo", merchandise.getMcode() + "register success");
		} else {
			model.addAttribute("registerInfo", merchandise.getMcode() + "register failed");
		}
		return "home";
	}
	@RequestMapping("/merchandiseUpdate")
	public String update(Merchandise merchandise, Model model) {
		if (merchandiseService.update(merchandise)) {
			model.addAttribute("registerInfo", merchandise.getMcode() + "update success");
		} else {
			model.addAttribute("registerInfo", merchandise.getMcode() + "update failed");
		}
		return "home";
	}
		
	@RequestMapping("/merchandisedelete")
	public String delete(Merchandise merchandise, Model model) {
		model.addAttribute("customer",merchandiseService.delete(merchandise)+ "delete success");
		return "client-delete";
	}
		
	
	@RequestMapping("/selectAllmerchandise")
	public String selectAll(Model model){
		model.addAttribute("allmerchandise",merchandiseService.selectAll());
		return "goods-files";
	}
	@RequestMapping("/selectmerchandise")
	public String selectCustomer(Merchandise merchandise,Model model){
		model.addAttribute("merchandise",merchandiseService.select(merchandise));
		return "goods-update";
	}
}
