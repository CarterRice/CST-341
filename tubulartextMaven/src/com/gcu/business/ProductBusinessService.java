package com.gcu.business;

import org.springframework.beans.factory.annotation.Autowired;

import com.gcu.data.DataAccessInterface;
import com.gcu.model.product;

public class ProductBusinessService implements ProductBusinessInterface{

	@SuppressWarnings("rawtypes")
	@Autowired
	DataAccessInterface dao;
	
	@Override
	public boolean test(product p) {
		
		return dao.create(p);
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
