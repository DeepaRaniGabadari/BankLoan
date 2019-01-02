package com.deepa.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.deepa.model.Employee;
import com.deepa.repositories.EmployeeRepository;





@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {
 
 @Autowired
 EmployeeRepository employeeRepository;

@Override
public List<Employee> getAllEmployees() {
	return (List<Employee>) employeeRepository.findAll();
}

@Override
public Employee getEmployeeById(int empid) {
	return employeeRepository.findById(empid).get();
}

@Override
public void saveOrUpdate(Employee employee) {
	employeeRepository.save(employee);
	
}

@Override
public void deleteEmployee(int empid) {
	 employeeRepository.deleteById(empid);
	
}

 
}


