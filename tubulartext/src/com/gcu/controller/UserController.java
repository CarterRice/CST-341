package com.gcu.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gcu.business.UserBusinessInterface;
import com.gcu.model.User;
import com.gcu.model.registerUser;

@Controller
@RequestMapping("/user")
public class UserController {
	
	/*UserBusinessInterface registerService;
	
	@Autowired
	public void setRegService(UserBusinessInterface regService) {
		this.registerService = regService;
	}*/

	@RequestMapping(path="/add", method=RequestMethod.GET)
	public ModelAndView displayForm() {
		return new ModelAndView("addUser", "user", new User("","")).addObject("registerUser",new registerUser("","","","",""));
	}
	
	@RequestMapping(path="/registerUser", method=RequestMethod.POST)
	public ModelAndView registerUser(@Valid @ModelAttribute("registerUser") registerUser newUser, BindingResult result) {
							
		
		if(result.hasErrors()) {
			return new ModelAndView("addUser", "registerUser", newUser);
		}else {
			//registerService.init();
			return new ModelAndView("newStoreFront", "registerUser", newUser);
			
		}			
		
	}	
	
	/*UserBusinessInterface loginService;
	
	@Autowired
	public void setLoginService(UserBusinessInterface service) {
		this.loginService = service;
	}*/
	
	@RequestMapping(path="/loginUser", method=RequestMethod.POST)
	public ModelAndView loginUser(@Valid @ModelAttribute("user") User User, BindingResult result) {
					
		
		if(result.hasErrors()) {
			return new ModelAndView("addUser", "user", User);
		}else {
			//loginService.init();
			return new ModelAndView("storefront", "user", User);
			
		}			
		
	}	
}
