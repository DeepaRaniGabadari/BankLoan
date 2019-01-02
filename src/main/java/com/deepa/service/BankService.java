package com.deepa.service;


import java.util.List;

import com.deepa.model.Bank;

public interface BankService {
	

	
	
	public List<Bank> getAllBanks();
	 
	 public Bank getBankById(int id);
	 
	 public void saveOrUpdate(Bank bank);
	 
	 public void deleteBank(int id);
}


