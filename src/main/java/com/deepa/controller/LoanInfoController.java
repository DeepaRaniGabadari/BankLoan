package com.deepa.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.deepa.model.LoanInfo;
import com.deepa.service.LoanInfoService;





@Controller
@RequestMapping(value="/loaninfo")
public class LoanInfoController {

 @Autowired
 LoanInfoService loaninfoService;
 
 @RequestMapping(value="/list", method=RequestMethod.GET)
 public ModelAndView list() {
  ModelAndView model = new ModelAndView("loaninfo_list");
  List<LoanInfo> loaninfoList = loaninfoService.getAllLoanInfos();
  model.addObject("loaninfoList", loaninfoList);
  
  return model;
 }
 
 @RequestMapping(value="/addloaninfo/", method=RequestMethod.GET)
 public ModelAndView addLoanInfo() {
  ModelAndView model = new ModelAndView();
  
  LoanInfo loaninfo= new LoanInfo();
  model.addObject("loaninfoForm", loaninfo);
  model.setViewName("loaninfo_form");
  
  return model;
 }
 
 @RequestMapping(value="/updateloaninfo/{loanid}", method=RequestMethod.GET)
 public ModelAndView editLoanInfo(@PathVariable int loanid) {
  ModelAndView model = new ModelAndView();
  
  LoanInfo  loaninfo = loaninfoService.getLoanInfoById(loanid);
  model.addObject("loaninfoForm", loaninfo);
  model.setViewName("loaninfo_form");
  
  return model;
 }
 
 @RequestMapping(value="/saveloaninfo", method=RequestMethod.POST)
 public ModelAndView save(@ModelAttribute("loaninfoForm") LoanInfo loaninfo) {
	  loaninfoService.saveOrUpdate(loaninfo);
  
  return new ModelAndView("redirect:/loaninfo/list");
 }
 
 @RequestMapping(value="/deleteloaninfo/{loanid}", method=RequestMethod.GET)
 public ModelAndView delete(@PathVariable("loanid") int loanid) {
  loaninfoService.deleteLoanInfo(loanid);
  
  return new ModelAndView("redirect:/loaninfo/list");
 }
}

