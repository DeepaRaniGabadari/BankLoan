package com.deepa.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.deepa.model.Department;
import com.deepa.service.DepartmentService;





@Controller
@RequestMapping(value="/department")
public class DepartmentController {

 @Autowired
 DepartmentService departmentService;
 
 @RequestMapping(value="/list", method=RequestMethod.GET)
 public ModelAndView list() {
  ModelAndView model = new ModelAndView("department_list");
  List<Department> departmentList = departmentService.getAllDepartments();
  model.addObject("departmentList", departmentList);
  
  return model;
 }
 
 @RequestMapping(value="/addDepartment/", method=RequestMethod.GET)
 public ModelAndView addDepartment() {
  ModelAndView model = new ModelAndView();
  
  Department department= new Department();
  model.addObject("departmentForm", department);
  model.setViewName("department_form");
  
  return model;
 }
 
 @RequestMapping(value="/updateDepartment/{deptid}", method=RequestMethod.GET)
 public ModelAndView editDepartment(@PathVariable int deptid) {
  ModelAndView model = new ModelAndView();
  
  Department department = departmentService.getDepartmentById(deptid);
  model.addObject("departmentForm", department);
  model.setViewName("department_form");
  
  return model;
 }
 
 @RequestMapping(value="/saveDepartment", method=RequestMethod.POST)
 public ModelAndView save(@ModelAttribute("DepartmentForm") Department department) {
  departmentService.saveOrUpdate(department);
  
  return new ModelAndView("redirect:/department/list");
 }
 
 @RequestMapping(value="/deleteDepartment/{deptid}", method=RequestMethod.GET)
 public ModelAndView delete(@PathVariable("deptid") int deptid) {
  departmentService.deleteDepartment(deptid);
  
  return new ModelAndView("redirect:/department/list");
 }
}