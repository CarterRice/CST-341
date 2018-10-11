package com.gcu.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gcu.model.product;
// Product object parameters String Name, String Description, String Price, String ImageFilePath, String TextFilePath

@Controller
@RequestMapping("/product")
public class ProductController {

	@RequestMapping(path="/add", method=RequestMethod.POST)
	public ModelAndView addProduct(@Valid @ModelAttribute("addProduct") product newProduct, BindingResult result) {			
		if(result.hasErrors()) {
			return new ModelAndView("addProduct", "newProduct", newProduct);
		}else {
		
			return new ModelAndView("storeFront", "newProduct", newProduct);
			
		}
	}
	
	
	
}
