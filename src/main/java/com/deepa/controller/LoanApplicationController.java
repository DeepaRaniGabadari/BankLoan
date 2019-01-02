package com.deepa.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.deepa.model.LoanApplication;
import com.deepa.service.LoanApplicationService;



@Controller
@RequestMapping(value="/loanapplication")
public class LoanApplicationController {

 @Autowired
 LoanApplicationService loanapplicationService;
 
 @RequestMapping(value="/list", method=RequestMethod.GET)
 public ModelAndView list() {
  ModelAndView model = new ModelAndView("loanapplication_list");
  List<LoanApplication> loanapplicationList = loanapplicationService.getAllLoanApplications();
  model.addObject("loanapplicationList", loanapplicationList);
  
  return model;
 }
 
 @RequestMapping(value="/addLoanApplication/", method=RequestMethod.GET)
 public ModelAndView addLoanApplication() {
  ModelAndView model = new ModelAndView();
  
  LoanApplication loanapplication= new LoanApplication();
  model.addObject("loanapplicationForm", loanapplication);
  model.setViewName("loanapplication_form");
  
  return model;
 }
 
 @RequestMapping(value="/updateLoanApplication/{id}", method=RequestMethod.GET)
 public ModelAndView editLoanApplication(@PathVariable int id) {
  ModelAndView model = new ModelAndView();
  
  LoanApplication loanapplication=loanapplicationService.getLoanApplicationById(id);
  model.addObject("loanapplicationForm", loanapplication);
  model.setViewName("loanapplication_form");
  
  return model;
 }
 
 
 
 @RequestMapping(value="/saveLoanApplication", method=RequestMethod.POST)
 public ModelAndView save(@ModelAttribute("loanapplicationForm") LoanApplication loanapplication) {
	 loanapplicationService.saveOrUpdate(loanapplication);
  
  //return new ModelAndView("redirect:/loanapplication/list");
  return new ModelAndView("redirect:/loanapplication/loanapplication_message");
  
 }
 
 
 @RequestMapping(value = "/loanapplication_message", method = RequestMethod.GET)
 public String finalPage() {
    return "loanapplication_message";
 }
 
 @RequestMapping(value = "/loan_assigned", method = RequestMethod.GET)
 public String assignedPage() {
    return "loan_assigned";
 }
 
 @RequestMapping(value = "/loan_pickup", method = RequestMethod.GET)
 public String loanpickupPage() {
    return "loan_pickup";
 }
 
 @RequestMapping(value = "/loan_verification", method = RequestMethod.GET)
 public String loanverificationPage() {
    return "loan_verification";
 }
 
 
 @RequestMapping(value = "/loan_legal", method = RequestMethod.GET)
 public String loanlegalPage() {
    return "loan_legal";
 }
 
 @RequestMapping(value = "/loan_status", method = RequestMethod.GET)
 public String loanstatusPage() {
    return "loan_status";
 }
 
 
 @RequestMapping(value = "/loanapplication_status", method = RequestMethod.GET)
 public String loanapplicationstatusPage() {
    return "loanapplication_status";
 }
 
 @RequestMapping(value="/deleteLoanApplication/{id}", method=RequestMethod.GET)
 public ModelAndView delete(@PathVariable("id") int id) {
	 loanapplicationService.deleteLoanApplication(id);
  
  return new ModelAndView("redirect:/loanapplication/list");
 }
 
 @RequestMapping(value="/assignLoanApplication/{loanid}", method=RequestMethod.GET)
 public ModelAndView assign(@PathVariable("loanid") int id) {
	 loanapplicationService.assignLoanApplication(id);
  
  return new ModelAndView("redirect:/loanapplication/list");
 }
 
  @RequestMapping(value="/LoanApplication/list", method=RequestMethod.GET)
 public ModelAndView pickup(@PathVariable("loanid") int id) {
	 loanapplicationService.pickupLoanApplication(id);
  
  return new ModelAndView("redirect:/loan_pickup");
 }
  
  
  @RequestMapping(value="/verifyLoanApplication/{loanid}", method=RequestMethod.GET)
  public ModelAndView verify(@PathVariable("loanid") int id) {
 	 loanapplicationService.verifyLoanApplication(id);
   
   return new ModelAndView("redirect:/loanapplication/loan_verification");
  }
}


