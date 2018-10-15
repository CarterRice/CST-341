package com.gcu;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;

import com.gcu.business.ProductBusinessInterface;
import com.gcu.business.ProductBusinessService;
import com.gcu.business.UserBusinessInterface;
import com.gcu.business.UserRegisterService;
import com.gcu.controller.ProductController;
import com.gcu.controller.UserController;

@Configuration
public class ApplicationConfiguration {

	@Bean(name="userController")
	public UserController getUserController() {
		return new UserController();
	}
	
	@Bean(name="productController")
	public ProductController getProductController() {
		return new ProductController();
	}
	
	@Bean(name="UserRegisterService", initMethod="init", destroyMethod="destroy")
	@Scope(value="request", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public UserBusinessInterface getRegisterService() {
		return new UserRegisterService();
	}
	
	@Bean(name="UserLoginService", initMethod="init", destroyMethod="destroy")
	@Scope(value="session", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public UserBusinessInterface getLoginService() {
		return new UserRegisterService();
	}
	
	@Bean(name="ProductService", initMethod="init", destroyMethod="destroy")
	@Scope(value="request", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public ProductBusinessInterface getProductService() {
		return new ProductBusinessService();
	}
}
