package com.gcu.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class registerUser {

	@NotNull(message="Username cannot be null.")
	@Size(min=2, max=30, message="Username must be between 3 and 16 characters")
	private String username;
	
	@NotNull(message="Password cannot be null.")
	@Size(min=2, max=30, message="Password name must be between 5 and 30 characters")
	private String password;
	
	@NotNull(message="First name cannot be null.")
	@Size(min=2, max=30, message="First name must be between 5 and 30 characters")
	private String firstName;
	
	@NotNull(message="Last name cannot be null.")
	@Size(min=2, max=30, message="Last name must be between 5 and 30 characters")
	private String lastName;
	
	@NotNull(message="Email cannot be null.")
	@Size(min=10, max=50, message="Email must be between 5 and 30 characters")
	private String email;
	
	public registerUser() {	
		username = "";
		password = "";
		firstName = "";
		lastName = "";
		email = "";
	}

	public registerUser(String username, String password, String firstName, String lastName, String email) {
		this.username = username;
		this.password = password;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
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

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}	
	
	
	
}
