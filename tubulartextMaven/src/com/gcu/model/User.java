package com.gcu.model;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class User {
	
	@NotNull(message="Username cannot be null.")
	@Size(min=2, max=30, message="Username must be between 3 and 16 characters")
	private String username;
	
	@NotNull(message="Password cannot be null.")
	@Size(min=2, max=30, message="Password name must be between 5 and 30 characters")
	private String password;
	
	
	public User() {	
		username = "";
		password = "";		
	}
	
	public User(String username, String password) {
		this.username = username;
		this.password = password;		
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}	

	
	
}
