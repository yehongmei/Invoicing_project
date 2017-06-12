package service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.EmployeeMapper;
import vo.Employee;

@Service
public class EmployeeService {
	@Autowired
	private EmployeeMapper employeeMapper;

	public boolean register(Employee employee){
		return employeeMapper.addEmployee(employee)>0;
	}
	public boolean update(Employee employee){
		return employeeMapper.updateEmployee(employee)>0;
		
	}
	public boolean delete(Employee employee){
		return employeeMapper.deleteEmployee(employee)>0;
		
	}
	public List<Employee> selectAll(){
		return employeeMapper.selectAllEmployee();
	}
	public Employee select(Employee employee){
		return employeeMapper.selectEmployee(employee);
	}
}
