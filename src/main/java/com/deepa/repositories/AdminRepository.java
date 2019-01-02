package com.deepa.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.deepa.model.Admin;


@Repository
public interface AdminRepository extends CrudRepository<Admin,Integer> { 

}
