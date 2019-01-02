package com.deepa.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deepa.model.Bank;
import com.deepa.model.LoanInfo;
import com.deepa.repositories.LoanInfoRepository;





@Service
@Transactional
public class LoanInfoServiceImpl implements LoanInfoService {
 
 @Autowired
 LoanInfoRepository loanInfoRepository;

@Override
public List<LoanInfo> getAllLoanInfos() {
	
	 return (List<LoanInfo>) loanInfoRepository.findAll();
}

@Override
public LoanInfo getLoanInfoById(int loanid) {
	 return loanInfoRepository.findById(loanid).get();
}

@Override
public void saveOrUpdate(LoanInfo loanInfo) {
	loanInfoRepository.save(loanInfo);
	
}

@Override
public void deleteLoanInfo(int loanid) {
	loanInfoRepository.deleteById(loanid);
	
}

 
}


