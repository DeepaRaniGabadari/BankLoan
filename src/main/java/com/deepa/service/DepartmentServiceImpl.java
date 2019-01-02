package com.deepa.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.deepa.model.Department;

import com.deepa.repositories.DepartmentRepository;


@Service
@Transactional
public class DepartmentServiceImpl implements DepartmentService{
	
	 @Autowired
	 DepartmentRepository departmentRepository;

	@Override
	public List<Department> getAllDepartments() {
		return (List<Department>) departmentRepository.findAll();
	}

	@Override
	public Department getDepartmentById(int deptid) {
		return departmentRepository.findById(deptid).get();
	}

	@Override
	public void saveOrUpdate(Department department) {
		departmentRepository.save(department);
		
	}

	@Override
	public void deleteDepartment(int deptid) {
	departmentRepository.deleteById(deptid);
		
	}
}

	