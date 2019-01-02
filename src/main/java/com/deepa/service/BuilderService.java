package com.deepa.service;
import java.util.List;

import com.deepa.model.Builder;



public interface BuilderService {
	

	
	
	public List<Builder> getAllBuilders();
	 
	 public Builder getBuilderById(int builderid);
	 
	 public void saveOrUpdate(Builder builder);
	 
	 public void deleteBuilder(int builderid);
}




