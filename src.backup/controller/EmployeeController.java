package controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.EmployeeService;
import vo.Employee;

@Controller
public class EmployeeController {

    @Autowired
    private  EmployeeService employeeService;

    @RequestMapping("/employeeRegister")
    public String register(Employee employee,Model model){
    	if(employeeService.register(employee)){
    		model.addAttribute("registerInfo", employee.getEcode()+"register success");
    	}else{
    		model.addAttribute("registerInfo",  employee.getEcode()+"register failed");
    	}
    	return "home";
    }
    @RequestMapping("/employeeUpdate")
	public String update(Employee employee, Model model) {
		if (employeeService.update(employee)) {
			model.addAttribute("registerInfo", employee.getEcode() + "update success");
		} else {
			model.addAttribute("registerInfo", employee.getEcode() + "update failed");
		}
		return "home";
	}
		
	@RequestMapping("/employeedelete")
	public String delete(Employee employee, Model model) {
		model.addAttribute("customer",employeeService.delete(employee)+ "delete success");
		return "client-delete";
	}
		
	
	@RequestMapping("/selectAllemployee")
	public String selectAllEmployee(Model model){
		model.addAttribute("allEmployee",employeeService.selectAll());
		return "employee-files";
	}
	@RequestMapping("/selectemployee")
	public String selectEmployee(Employee employee,Model model){
		model.addAttribute("employee",employeeService.select(employee));
		return "employee-update";
	}
}
