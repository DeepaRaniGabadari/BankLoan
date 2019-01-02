package com.deepa.service;
import java.util.List;

import com.deepa.model.LoanApplication;



public interface LoanApplicationService {
	
	public List<LoanApplication> getAllLoanApplications();
	 
	 public LoanApplication getLoanApplicationById(int id);
	 
	 public void saveOrUpdate(LoanApplication loanapplication);
	 
	 public void deleteLoanApplication(int id);

	public void assignLoanApplication(int id);

	public void pickupLoanApplication(int id);

	public void verifyLoanApplication(int id);

	
}

