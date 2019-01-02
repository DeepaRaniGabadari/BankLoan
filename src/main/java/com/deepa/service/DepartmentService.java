package com.deepa.service;


import java.util.List;

import com.deepa.model.Department;



public interface DepartmentService {
	

	
	
	public List<Department> getAllDepartments();
	 
	 public Department getDepartmentById(int deptid);
	 
	 public void saveOrUpdate(Department department);
	 
	 public void deleteDepartment(int deptid);
}


