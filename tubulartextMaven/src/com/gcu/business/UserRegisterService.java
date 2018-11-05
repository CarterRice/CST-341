package com.gcu.business;

import org.springframework.beans.factory.annotation.Autowired;

import com.gcu.data.DataAccessInterface;
import com.gcu.model.registerUser;

public class UserRegisterService implements RegisterBusinessInterface {

	@SuppressWarnings("rawtypes")
	@Autowired
	DataAccessInterface dao;
	
	@Override
	public boolean test(registerUser u) {
		return dao.create(u);
	}

	@Override
	public void init() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
