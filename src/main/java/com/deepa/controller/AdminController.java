package com.deepa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.deepa.model.Admin;
import com.deepa.service.AdminService;





@Controller
@RequestMapping(value="/admin")
public class AdminController {

 @Autowired
 AdminService adminService;
 
 @RequestMapping(value="/list", method=RequestMethod.GET)
 public ModelAndView list() {
  ModelAndView model = new ModelAndView("admin_list");
  List<Admin> adminList = adminService.getAllAdmins();
  model.addObject("adminList", adminList);
  
  return model;
 }
 
 @RequestMapping(value="/addAdmin/", method=RequestMethod.GET)
 public ModelAndView addAdmin() {
  ModelAndView model = new ModelAndView();
  
  Admin admin= new Admin();
  model.addObject("adminForm", admin);
  model.setViewName("admin_form");
  
  return model;
 }
 
 @RequestMapping(value="/updateAdmin/{id}", method=RequestMethod.GET)
 public ModelAndView editAdmin(@PathVariable int id) {
  ModelAndView model = new ModelAndView();
  
  Admin admin = adminService.getAdminById(id);
  model.addObject("adminForm", admin);
  model.setViewName("admin_form");
  
  return model;
 }
 
 @RequestMapping(value="/saveAdmin", method=RequestMethod.POST)
 public ModelAndView save(@ModelAttribute("adminForm") Admin admin) {
  adminService.saveOrUpdate(admin);
  
  return new ModelAndView("redirect:/admin/list");
 }
 
 @RequestMapping(value="/deleteAdmin/{id}", method=RequestMethod.GET)
 public ModelAndView delete(@PathVariable("id") int id) {
  adminService.deleteAdmin(id);
  
  return new ModelAndView("redirect:/admin/list");
 }
 
 @RequestMapping(value = "/admin_status", method = RequestMethod.GET)
 public String loanstatusPage() {
    return "admin_status";
 }
 
}


