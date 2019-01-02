package com.deepa.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deepa.model.Bank;
import com.deepa.model.Builder;
import com.deepa.repositories.BuilderRepository;





@Service
@Transactional
public class BuilderServiceImpl implements BuilderService {
 
 @Autowired
 BuilderRepository builderRepository;

@Override
public List<Builder> getAllBuilders() {
	 return (List<Builder>) builderRepository.findAll();

}

@Override
public Builder getBuilderById(int builderid) {
	 return builderRepository.findById(builderid).get();
	
}

@Override
public void saveOrUpdate(Builder builder) {
	
	 builderRepository.save(builder);
}

@Override
public void deleteBuilder(int builderid) {
	builderRepository.deleteById(builderid);
	
}

 
}
