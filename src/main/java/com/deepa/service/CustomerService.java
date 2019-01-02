package com.deepa.service;


import java.util.List;


import com.deepa.model.Customer;

public interface CustomerService {
	
	public List<Customer> getAllCustomers();
	 
	 public Customer getCustomerById(int id);
	 
	 public void saveOrUpdate(Customer customer);
	 
	 public void deleteCustomer(int id);
}