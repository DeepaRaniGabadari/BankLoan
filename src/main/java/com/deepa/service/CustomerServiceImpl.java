package com.deepa.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.deepa.model.Customer;
import com.deepa.repositories.CustomerRepository;





@Service
@Transactional
public class CustomerServiceImpl implements CustomerService {
 
 @Autowired
 CustomerRepository customerRepository;

@Override
public List<Customer> getAllCustomers() {
	
	return (List<Customer>) customerRepository.findAll();
}

@Override
public Customer getCustomerById(int id) {
	
	return customerRepository.findById(id).get();
}

@Override
public void saveOrUpdate(Customer customer) {
	customerRepository.save(customer);
	
}

@Override
public void deleteCustomer(int id) {
	customerRepository.deleteById(id);
	
}

 
}