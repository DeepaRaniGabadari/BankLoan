package com.deepa.service;



import java.util.List;

import com.deepa.model.Admin;



public interface AdminService {
	

	
	
	public List<Admin> getAllAdmins();
	 
	 public Admin getAdminById(int id);
	 
	 public void saveOrUpdate(Admin admin);
	 
	 public void deleteAdmin(int id);
}

