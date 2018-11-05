package com.gcu.business;

import org.springframework.beans.factory.annotation.Autowired;

import com.gcu.data.DataAccessInterface;
import com.gcu.model.User;

public class UserLoginService implements UserBusinessInterface {

	@SuppressWarnings("rawtypes")
	@Autowired
	DataAccessInterface dao;
	
	@Override
	public boolean test(User u) {	
		return dao.loginCheck(u);
	}	

	@Override
	public void init() {		
		
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
