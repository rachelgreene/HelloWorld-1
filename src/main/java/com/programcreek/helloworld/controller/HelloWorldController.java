package com.programcreek.helloworld.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HelloWorldController {
	String message = "Welcome to Angularjs!";
	
	
	@RequestMapping("/hello")
	/*public ModelAndView showMessage(
			@RequestParam(value = "name", required = false, defaultValue = "World") String name)
			{
		System.out.println("in controller");
 
		ModelAndView mv = new ModelAndView("helloworld");
		mv.addObject("message", message);
	    mv.addObject("name", name);
		return mv;*/
	
	
	
	
	 public ModelAndView showMessage(
	 @RequestParam(value = "name", required = false, defaultValue = "World") String name)
		{
		System.out.println("in controller");
		ModelAndView mv = new ModelAndView("helloworld");
		//mv.addObject("message", message);
	   // mv.addObject("name", name);
	    mv.addObject("userDetails" ,userDetails);
		return mv;
			}

	 @Autowired 
	UserDetails userDetails; 
	@RequestMapping(value="/hello", 
    method=RequestMethod.GET,produces= "application/json") 
    @ResponseStatus(HttpStatus.OK) 
	@ResponseBody 
	public  UserDetails getUser() { 
    UserDetails userDetails = new UserDetails(); 
    userDetails.setUserName("Geetika"); 
    userDetails.setEmailId("geetika.a.arora@gmail.com"); 
     return userDetails; 
 
	    } 

	
	}
	
	
	
	
