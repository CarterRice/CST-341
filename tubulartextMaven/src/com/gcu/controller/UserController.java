package com.gcu.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gcu.business.RegisterBusinessInterface;
import com.gcu.business.UserBusinessInterface;
import com.gcu.model.User;
import com.gcu.model.registerUser;

@Controller
@RequestMapping("/user")
public class UserController {
	
	RegisterBusinessInterface UserRegisterService;
	
	@Autowired
	public void setRegService(RegisterBusinessInterface UserRegisterService) {
		this.UserRegisterService = UserRegisterService;
	}

	@RequestMapping(path="/add", method=RequestMethod.GET)
	public ModelAndView displayForm() {
		return new ModelAndView("addUser", "user", new User("","")).addObject("registerUser",new registerUser("","","","",""));
	}
	
	@RequestMapping(path="/registerUser", method=RequestMethod.POST)
	public ModelAndView registerUser(@Valid @ModelAttribute("registerUser") registerUser newUser, BindingResult result) {
							
		
		if(result.hasErrors()) {
			return new ModelAndView("addUser", "registerUser", newUser).addObject("user", new User("",""));
		}else {
			if(UserRegisterService.test(newUser) == true) {
				return new ModelAndView("addUser", "registerUser", newUser).addObject("user", new User("",""));
			}else {
				return new ModelAndView("addUser", "registerUser", newUser).addObject("user", new User("",""));
			}
		}			
		
	}	
	
	UserBusinessInterface UserLoginService;
	
	@Autowired
	public void setUserLoginService(UserBusinessInterface UserLoginService) {
		this.UserLoginService = UserLoginService;
	}
	
	@RequestMapping(path="/loginUser", method=RequestMethod.POST)
	public ModelAndView loginUser(@Valid @ModelAttribute("user") User User, BindingResult result) {
					
		
		if(result.hasErrors()) {
			return new ModelAndView("addUser", "user", User).addObject("registerUser",new registerUser("","","","",""));
		}else {
			if(UserLoginService.test(User) == true) {
				return new ModelAndView("storefront", "user", User);
			}else {
				return new ModelAndView("addUser", "user", User).addObject("registerUser",new registerUser("","","","",""));
			}
		}			
		
	}	
}
