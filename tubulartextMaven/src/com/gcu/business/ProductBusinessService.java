package com.gcu.business;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.gcu.data.DataAccessInterface;
import com.gcu.model.product;

public class ProductBusinessService implements ProductBusinessInterface{

	@SuppressWarnings("rawtypes")
	@Autowired
	DataAccessInterface<product> dao;
	
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
	
	public List<product> findAll(){
		return dao.findAll();
		
	}
	
	public boolean update(product p) {
		return dao.update(p);
	}
	
	public boolean delete(int id) {
		return dao.delete(id);
	}

	@Override
	public product findById(int id) {
		return dao.findById(id);
	}

}
