package com.gcu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gcu.model.User;
import com.gcu.model.registerUser;

@Controller
@RequestMapping("/user")
public class UserController {

	@RequestMapping(path="/add", method=RequestMethod.GET)
	public ModelAndView displayForm() {
		return new ModelAndView("addUser", "user", new User("","")).addObject("registerUser",new registerUser("","","","",""));
	}
	
	@RequestMapping(path="/registerUser", method=RequestMethod.POST)
	public ModelAndView registerUser(@Valid @ModelAttribute("registerUser") registerUser newUser, BindingResult result) {
							
		
		if(result.hasErrors()) {
			return new ModelAndView("addUser", "registerUser", newUser);
		}else {
		
			return new ModelAndView("newStoreFront", "registerUser", newUser);
			
		}			
		
	}	
	
	@RequestMapping(path="/loginUser", method=RequestMethod.POST)
	public ModelAndView loginUser(@Valid @ModelAttribute("user") User User, BindingResult result) {
					
		
		if(result.hasErrors()) {
			return new ModelAndView("addUser", "user", User);
		}else {
		
			return new ModelAndView("storefront", "user", User);
			
		}			
		
	}	
}
