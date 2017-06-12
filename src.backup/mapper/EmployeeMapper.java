package mapper;

import java.util.List;

import vo.Employee;

public interface  EmployeeMapper {
	int addEmployee(Employee employee);
	int updateEmployee(Employee employee);
	int deleteEmployee(Employee employee);
	List<Employee> selectAllEmployee();
	Employee selectEmployee(Employee employee);
}
