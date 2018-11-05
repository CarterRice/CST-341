package com.gcu;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;

import com.gcu.business.ProductBusinessInterface;
import com.gcu.business.ProductBusinessService;
import com.gcu.business.RegisterBusinessInterface;
import com.gcu.business.UserBusinessInterface;
import com.gcu.business.UserLoginService;
import com.gcu.business.UserRegisterService;
import com.gcu.controller.ProductController;
import com.gcu.controller.UserController;
import com.gcu.data.DataAccessInterface;
import com.gcu.data.LoginDataService;

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
	public RegisterBusinessInterface getUserRegisterService() {
		return new UserRegisterService();
	}
	
	@Bean(name="UserLoginService", initMethod="init", destroyMethod="destroy")
	@Scope(value="session", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public UserBusinessInterface getUserLoginService() {
		return new UserLoginService();
	}
	
	@Bean(name="ProductService", initMethod="init", destroyMethod="destroy")
	@Scope(value="request", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public ProductBusinessInterface getProductService() {
		return new ProductBusinessService();
	}
	
	@Bean(name="loginDataService")
	@Scope(value="session", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public DataAccessInterface getLoginDataService() {
		return new LoginDataService();
	}
	
	@Bean(name="dataSource", destroyMethod = "close")
	@Scope(value="singleton", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public DataSource getDataSource() {
		
		DataSource dataSource = new DataSource();
		dataSource.setDriverClassName("org.apache.derby.jdbc.EmbeddedDriver");
		dataSource.setUrl("jdbc:derby:C:\\Users\\carte\\MyDB");
		dataSource.setUsername("user");
		dataSource.setPassword("derby");
		dataSource.setInitialSize(1);
		return dataSource;
		
//		DataSource dataSource = new DataSource();
//		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
//		dataSource.setUrl("jdbc:mysql:C:\\MAMP\\db\\mysql");
//		dataSource.setUsername("root");
//		dataSource.setPassword("root");
//		dataSource.setInitialSize(1);
//		return dataSource;
		
	}
}
