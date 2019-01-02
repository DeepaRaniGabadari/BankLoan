package com.deepa.repositories;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.deepa.model.LoanInfo;


@Repository
public interface LoanInfoRepository extends CrudRepository<LoanInfo,Integer> { 

}


