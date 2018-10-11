package com.gcu;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;

import com.gcu.controller.UserController;

@Configuration
public class ApplicationConfiguration {

	@Bean(name="userController")
	public UserController getUserController() {
		return new UserController();
	}
	
	
}
