package mapper;

import java.util.List;

import vo.Customer;
public  interface  CustomerMapper {
	int addCustomer(Customer customer);
	int updateCustomer(Customer customer);
	int deleteCustomer(Customer customer);
	List<Customer> selectAllCustomer();
	Customer selectCustomer(Customer customer);
}
