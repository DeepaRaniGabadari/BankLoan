package com.deepa.service;
import java.util.List;

import com.deepa.model.LoanInfo;



public interface LoanInfoService {
	

	
	
	public List<LoanInfo> getAllLoanInfos();
	 
	 public LoanInfo getLoanInfoById(int loanid);
	 
	 public  void saveOrUpdate(LoanInfo loanInfo);
	 
	 public void deleteLoanInfo(int loanid);
}





