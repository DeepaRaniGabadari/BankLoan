package com.deepa.repositories;
import org.springframework.data.repository.CrudRepository;

import com.deepa.model.Employee;



public interface EmployeeRepository extends CrudRepository<Employee,Integer> { 

}

