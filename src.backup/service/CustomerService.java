package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.CustomerMapper;
import vo.Customer;
@Service
public class CustomerService {
	@Autowired
	private CustomerMapper customerMapper;
	public boolean register(Customer customer){
		return customerMapper.addCustomer(customer)>0;
		
	}
	public boolean update(Customer customer){
		return customerMapper.updateCustomer(customer)>0;
		
	}
	public boolean delete(Customer customer){
		return customerMapper.deleteCustomer(customer)>0;
		
	}
	public List<Customer> selectAll(){
		return customerMapper.selectAllCustomer();
	}
	public Customer select(Customer customer){
		return customerMapper.selectCustomer(customer);
	}
}
