package com.deepa.repositories;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.deepa.model.Builder;


@Repository
public interface BuilderRepository extends CrudRepository<Builder,Integer> { 

}


