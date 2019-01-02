package com.deepa.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.deepa.model.Bank;
@Repository
public interface BankRepository extends CrudRepository<Bank,Integer> { 

}
