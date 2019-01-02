package com.deepa.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.deepa.model.Bank;
import com.deepa.service.BankService;



@Controller
@RequestMapping(value="/bank")
public class BankController {

 @Autowired
 BankService bankService;
 
 @RequestMapping(value="/list", method=RequestMethod.GET)
 public ModelAndView list() {
  ModelAndView model = new ModelAndView("bank_list");
  List<Bank> bankList = bankService.getAllBanks();
  model.addObject("bankList", bankList);
  
  return model;
 }
 
 @RequestMapping(value="/addBank/", method=RequestMethod.GET)
 public ModelAndView addBank() {
  ModelAndView model = new ModelAndView();
  
  Bank bank= new Bank();
  model.addObject("bankForm", bank);
  model.setViewName("bank_form");
  
  return model;
 }
 
 @RequestMapping(value="/updateBank/{id}", method=RequestMethod.GET)
 public ModelAndView editBank(@PathVariable int id) {
  ModelAndView model = new ModelAndView();
  
  Bank bank = bankService.getBankById(id);
  model.addObject("bankForm", bank);
  model.setViewName("bank_form");
  
  return model;
 }
 
 @RequestMapping(value="/saveBank", method=RequestMethod.POST)
 public ModelAndView save(@ModelAttribute("bankForm") Bank bank) {
  bankService.saveOrUpdate(bank);
  
  return new ModelAndView("redirect:/bank/list");
 }
 
 @RequestMapping(value="/deleteBank/{id}", method=RequestMethod.GET)
 public ModelAndView delete(@PathVariable("id") int id) {
  bankService.deleteBank(id);
  
  return new ModelAndView("redirect:/bank/list");
 }
}