package com.gcu.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.gcu.business.ProductBusinessInterface;
import com.gcu.model.product;
// Product object parameters String Name, String Description, String Price, String ImageFilePath, String TextFilePath

@Controller
@RequestMapping("/product")
public class ProductController {

	ProductBusinessInterface ProductService;
	
	@Autowired
	public void setProductService(ProductBusinessInterface productService) {
		this.ProductService = productService;
	}
	
	@RequestMapping(path="/add", method=RequestMethod.GET)
	public ModelAndView displayForm() {
		return new ModelAndView("addProduct", "product", new product("","","","",""));
	}
	
	@RequestMapping(path="/newProduct", method=RequestMethod.POST)
	public ModelAndView addProduct(@Valid @ModelAttribute("addProduct") product newProduct, BindingResult result) {			
		if(result.hasErrors()) {
			return new ModelAndView("storefront", "newProduct", newProduct);
		}else {			
			if(ProductService.test(newProduct) == true) {
				return new ModelAndView("storefront", "newProduct", newProduct);
			}else {
				return new ModelAndView("storefront", "newProduct", newProduct);
			}
		}
	}
}
