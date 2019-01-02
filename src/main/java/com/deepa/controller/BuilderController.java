package com.deepa.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.deepa.model.Builder;
import com.deepa.service.BuilderService;





@Controller
@RequestMapping(value="/builder")
public class BuilderController {

 @Autowired
 BuilderService builderService;
 
 @RequestMapping(value="/list", method=RequestMethod.GET)
 public ModelAndView list() {
  ModelAndView model = new ModelAndView("builder_list");
  List<Builder> builderList = builderService.getAllBuilders();
  model.addObject("builderList", builderList);
  
  return model;
 }
 
 @RequestMapping(value="/addBuilder/", method=RequestMethod.GET)
 public ModelAndView addBuilder() {
  ModelAndView model = new ModelAndView();
  
  Builder builder= new Builder();
  model.addObject("builderForm", builder);
  model.setViewName("builder_form");
  
  return model;
 }
 
 @RequestMapping(value="/updateBuilder/{builderid}", method=RequestMethod.GET)
 public ModelAndView editBuilder(@PathVariable int id) {
  ModelAndView model = new ModelAndView();
  
  Builder builder = builderService.getBuilderById(id);
  model.addObject("builderForm", builder);
  model.setViewName("builder_form");
  
  return model;
 }
 
 @RequestMapping(value="/saveBuilder", method=RequestMethod.POST)
 public ModelAndView save(@ModelAttribute("builderForm") Builder builder) {
  builderService.saveOrUpdate(builder);
  
  return new ModelAndView("redirect:/builder/list");
 }
 
 @RequestMapping(value="/deleteBuilder/{builderid}", method=RequestMethod.GET)
 public ModelAndView delete(@PathVariable("builderid") int id) {
  builderService.deleteBuilder(id);
  
  return new ModelAndView("redirect:/builder/list");
 }
}


