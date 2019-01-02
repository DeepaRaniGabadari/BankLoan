package com.deepa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	/*@RequestMapping(value = "/", method=RequestMethod.GET)
	public String index() {
	    return "index";
	}*/
	
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	   public String index() {
	      return "index";
	   }
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	   public String home() {
	      return "home";
	   }
	
	@RequestMapping(value = "/customer_home", method = RequestMethod.GET)
	   public String customer_home() {
	      return "customer_home";
	   }
	
	@RequestMapping(value = "/pickup_home", method = RequestMethod.GET)
	   public String pickup_home() {
	      return "pickup_home";
	   }
	@RequestMapping(value = "/verification_home", method = RequestMethod.GET)
	   public String verification_home() {
	      return "verification_home";
	   }
	@RequestMapping(value = "/legal_home", method = RequestMethod.GET)
	   public String legal_home() {
	      return "legal_home";
	   }
	
	/*@RequestMapping(value = "/loanapplication_form", method = RequestMethod.GET)
	   public String loanapplication_form() {
	      return "loanapplication_form";
	   }*/
	
	
	/*@RequestMapping(value="/bankformgo", method = RequestMethod.GET)
    public ModelAndView bankform()
    {
        ModelAndView bankform1 = new ModelAndView("bank_form");
        return bankform1;
    }
	
	@RequestMapping(value="/banklistgo", method = RequestMethod.GET)
    public ModelAndView banktablelist()
    {
        ModelAndView bankform1 = new ModelAndView("banktablelist");
        return bankform1;
    }*/
	

}
