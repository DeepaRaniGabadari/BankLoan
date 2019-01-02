package com.deepa.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deepa.model.Customer;
import com.deepa.model.LoanApplication;
import com.deepa.repositories.LoanApplicationRepository;

@Service
@Transactional
public class LoanApplicationServiceImpl implements LoanApplicationService {
 
 @Autowired
 LoanApplicationRepository loanapplicationRepository;

@Override
public List<LoanApplication> getAllLoanApplications() {
	
	return (List<LoanApplication>) loanapplicationRepository.findAll();

}

@Override
public LoanApplication getLoanApplicationById(int id) {
	return loanapplicationRepository.findById(id).get();
}

@Override
public void saveOrUpdate(LoanApplication loanapplication) {
	loanapplicationRepository.save(loanapplication);
	
}

@Override
public void deleteLoanApplication(int id) {
	loanapplicationRepository.deleteById(id);
	
}

@Override
public void assignLoanApplication(int id) {
	
}

@Override
public void pickupLoanApplication(int id) {
	// TODO Auto-generated method stub
	
}

@Override
public void verifyLoanApplication(int id) {
	// TODO Auto-generated method stub
	
}


	


}