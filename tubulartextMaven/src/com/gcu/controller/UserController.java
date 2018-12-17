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

	/**
	 * Method for direction to Login/Register Page
	 * 
	 * @return	Model and view is returned (addUser page, login/register)
	 */
	@RequestMapping(path="/add", method=RequestMethod.GET)
	public ModelAndView displayForm() {
		return new ModelAndView("addUser", "user", new User("","")).addObject("registerUser",new registerUser("","","","",""));
	}
	
	/**
	 * Controller for creating a new user in the database. Upon success user will remain on the same page but the username and password sections under the login will be filled in with the registered users information
	 *
	 * @param  The register User model
	 * @param  Results of input
	 * @return	Model and view is returned (addUser page, login/register)
	 */
	@RequestMapping(path="/registerUser", method=RequestMethod.POST)
	public ModelAndView registerUser(@Valid @ModelAttribute("registerUser") registerUser newUser, BindingResult result) {
							
		
		if(result.hasErrors()) {
			return new ModelAndView("addUser", "registerUser", newUser).addObject("user", new User("",""));
		}else {
			if(UserRegisterService.test(newUser) == true) {
				return new ModelAndView("addUser", "registerUser", newUser).addObject("user", new User("",""));
			}else if(UserRegisterService.test(newUser) == false) {
				return new ModelAndView("addUser", "registerUser", new registerUser("ERROR","","","","")).addObject("user", new User("",""));
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
	
	/**
	 * Controller for checking username and password and logging in the user.
	 *
	 * @param  The user model
	 * @param  Results of input
	 * @return	Model and view is returned (The welcome page confirmation page upon successful login)
	 */
	@RequestMapping(path="/loginUser", method=RequestMethod.POST)
	public ModelAndView loginUser(@Valid @ModelAttribute("user") User User, BindingResult result) {
					
		
		if(result.hasErrors()) {			
			return new ModelAndView("addUser", "user", User).addObject("registerUser",new registerUser("","","","",""));		
		}else {
			if(UserLoginService.test(User) == true) {
				return new ModelAndView("storefront", "user", User);
			}else if(UserLoginService.test(User) == false){
				return new ModelAndView("addUser", "user", new User("ERROR","")).addObject("registerUser",new registerUser("","","","",""));
			}else {
				return new ModelAndView("addUser", "user", User).addObject("registerUser",new registerUser("","","","",""));
			}
		}			
		
	}	
}
