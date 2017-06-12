package service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.CustomerService;
import vo.Customer;
@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;

	@RequestMapping("/customerRegister")
	public String register(Customer customer, Model model) {
		if (customerService.register(customer)) {
			model.addAttribute("registerInfo", customer.getCcode() + "register success");
		} else {
			model.addAttribute("registerInfo", customer.getCcode() + "register failed");
		}
		return "home";
	}
	@RequestMapping("/customerUpdate")
	public String update(Customer customer, Model model) {
		if (customerService.update(customer)) {
			model.addAttribute("registerInfo", customer.getCcode() + "update success");
		} else {
			model.addAttribute("registerInfo", customer.getCcode() + "update failed");
		}
		return "home";
	}
		
	@RequestMapping("/customerdelete")
	public String delete(Customer customer, Model model) {
		model.addAttribute("customer",customerService.delete(customer)+ "delete success");
		return "client-delete";
	}
		
	
	@RequestMapping("/selectAllCustomer")
	public String selectAllCustomer(Model model){
		model.addAttribute("allCustomer",customerService.selectAll());
		return "client-files";
	}
	@RequestMapping("/selectCustomer")
	public String selectCustomer(Customer customer,Model model){
		model.addAttribute("customer",customerService.select(customer));
		return "client-update";
	}
}
