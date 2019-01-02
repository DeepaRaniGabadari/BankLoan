package com.deepa.service;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.deepa.model.Bank;
import com.deepa.repositories.BankRepository;



@Service
@Transactional
public class BankServiceImpl implements BankService {
 
 @Autowired
 BankRepository bankRepository;

 @Override
 public List<Bank> getAllBanks() {
  return (List<Bank>) bankRepository.findAll();
 }

 @Override
 public Bank getBankById(int id) {
  return bankRepository.findById(id).get();
 }

 @Override
 public void saveOrUpdate(Bank bank) {
  bankRepository.save(bank);
 }

 @Override
 public void deleteBank(int id) {
  bankRepository.deleteById(id);
 }

}