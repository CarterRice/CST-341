package com.gcu;

import java.util.ArrayList;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.http.MediaType;
import org.springframework.http.converter.ByteArrayHttpMessageConverter;
import org.springframework.http.converter.HttpMessageConverter;

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
import com.gcu.data.ProductDataService;
import com.gcu.data.RegisterDataService;
import com.gcu.model.User;
import com.gcu.model.product;
import com.gcu.model.registerUser;

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
	@Scope(value="singleton", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public RegisterBusinessInterface getUserRegisterService() {
		return new UserRegisterService();
	}
	
	@Bean(name="UserLoginService", initMethod="init", destroyMethod="destroy")
	@Scope(value="singleton", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public UserBusinessInterface getUserLoginService() {
		return new UserLoginService();
	}
	
	@Bean(name="ProductBusinessService", initMethod="init", destroyMethod="destroy")
	@Scope(value="singleton", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public ProductBusinessInterface getProductBusinessService() {
		return new ProductBusinessService();
	}
	
	@Bean(name="loginDataService")
	@Scope(value="singleton", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public DataAccessInterface<User> getLoginDataService() {
		return new LoginDataService();
	}
	
	@Bean(name="productDataService")
	@Scope(value="singleton", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public DataAccessInterface<product> getProductDataService() {
		return new ProductDataService();
	}
	
	@Bean(name="registerDataService")
	@Scope(value="singleton", proxyMode=ScopedProxyMode.TARGET_CLASS)
	public DataAccessInterface<registerUser> getRegisterDataService() {
		return new RegisterDataService();
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
	}
	
	//Methods used to convert for image display
	public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
	    converters.add(byteArrayHttpMessageConverter());
	}
	 
	@Bean
	public ByteArrayHttpMessageConverter byteArrayHttpMessageConverter() {
	    ByteArrayHttpMessageConverter arrayHttpMessageConverter = new ByteArrayHttpMessageConverter();
	    arrayHttpMessageConverter.setSupportedMediaTypes(getSupportedMediaTypes());
	    return arrayHttpMessageConverter;
	}
	 
	private List<MediaType> getSupportedMediaTypes() {
	    List<MediaType> list = new ArrayList<MediaType>();
	    list.add(MediaType.IMAGE_JPEG);
	    list.add(MediaType.IMAGE_PNG);
	    list.add(MediaType.APPLICATION_OCTET_STREAM);
	    return list;
	}
}
