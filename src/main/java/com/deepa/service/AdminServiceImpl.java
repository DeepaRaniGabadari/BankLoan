package com.deepa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deepa.model.Admin;

import com.deepa.repositories.AdminRepository;


@Service
@Transactional
public class AdminServiceImpl implements AdminService {
	
	 @Autowired
	 AdminRepository adminRepository;

	@Override
	public List<Admin> getAllAdmins() {
		return (List<Admin>) adminRepository.findAll();
	}

	@Override
	public Admin getAdminById(int id) {
		return adminRepository.findById(id).get();
		
	}

	@Override
	public void saveOrUpdate(Admin admin) {
		adminRepository.save(admin);
		
	}

	@Override
	public void deleteAdmin(int id) {
		 adminRepository.deleteById(id);
		
	}
 
 

}


