package com.deepa.service;
import java.util.List;

import com.deepa.model.Employee;




public interface EmployeeService {
	
	public List<Employee> getAllEmployees();
	 
	 public Employee getEmployeeById(int empid);
	 
	 public void saveOrUpdate(Employee employee);
	 
	 public void deleteEmployee(int empid);

}
