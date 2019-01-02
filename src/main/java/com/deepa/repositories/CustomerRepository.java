package com.deepa.repositories;
import org.springframework.data.repository.CrudRepository;

import com.deepa.model.Customer;



public interface CustomerRepository extends CrudRepository<Customer,Integer> { 

}

