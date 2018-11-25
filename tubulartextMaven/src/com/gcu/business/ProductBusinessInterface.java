package com.gcu.business;

import java.util.List;

import javax.validation.Valid;

import com.gcu.model.product;

public interface ProductBusinessInterface {

	public boolean test(product p);
	public void init();
	public void destroy();
	public List<product> findAll();
	public boolean update(product updateProduct);
	public boolean delete(int argument);
	public product findById(int id);
	
}
