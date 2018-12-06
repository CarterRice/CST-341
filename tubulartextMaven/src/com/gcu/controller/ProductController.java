package com.gcu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
		return new ModelAndView("addProduct", "product", new product(0,"","","","",""));
	}
	
	@RequestMapping(path="/view", method=RequestMethod.GET)
	public ModelAndView displayProducts() {
		List<product> products = new ArrayList<product>();
		
		products = ProductService.findAll();
		
		return new ModelAndView("newStoreFront").addObject("products", products);
	}
	
	@RequestMapping(path="/updateView", method=RequestMethod.GET)
	public ModelAndView displayUpdateForm() {
		List<product> products = new ArrayList<product>();
		
		products = ProductService.findAll();
		
		return new ModelAndView("updateProduct").addObject("products", products);
	}
	//Create a new Product
	@RequestMapping(path="/newProduct", method=RequestMethod.POST)
	public ModelAndView addProduct(@Valid @ModelAttribute("addProduct") product newProduct, BindingResult result, @RequestParam MultipartFile textFile, @RequestParam MultipartFile imageFile, ModelMap modelMap) {			
		if(result.hasErrors()) {
			return new ModelAndView("storefront", "newProduct", newProduct);
		}else {		
			modelMap.addAttribute("textFilePath", textFile);
			modelMap.addAttribute("imageFilePath", imageFile);
			if(ProductService.test(newProduct) == true) {
				List<product> products = new ArrayList<product>();
				
				products = ProductService.findAll();
				
				return new ModelAndView("newStoreFront").addObject("products", products);
			}else {
				return new ModelAndView("storefront", "newProduct", newProduct);
			}
		}
	}
	
	@RequestMapping(path="/updateProduct", method=RequestMethod.POST)
	public ModelAndView updateProduct(@Valid @ModelAttribute("product") product updateProduct, BindingResult result) {
		if(result.hasErrors()) {
			return new ModelAndView("storefront", "newProduct", updateProduct);
		}else {			
			if(ProductService.update(updateProduct) == true) {
				List<product> products = new ArrayList<product>();
				
				products = ProductService.findAll();
				
				return new ModelAndView("newStoreFront").addObject("products", products);
			}else {
				return new ModelAndView("storefront", "newProduct", updateProduct);
			}
		}
	}
	
	@RequestMapping(path="/update/{argument}", method=RequestMethod.GET)
	public ModelAndView updateFormProduct(@PathVariable("argument") String argument) {
		int id = Integer.parseInt(argument);
		
		product p = ProductService.findById(id);
		
		//product prod = new product(101,"NewTest","NewTest","5","FAIL","FAIL");
		
		return new ModelAndView("updateProductForm", "product", p);
	}
	
	@RequestMapping(path="/delete/{argument}", method=RequestMethod.GET)
	public ModelAndView deleteProduct(@PathVariable("argument") String argument) {
		int id = Integer.parseInt(argument);
		if(ProductService.delete(id) == true) {
			List<product> products = new ArrayList<product>();
			
			products = ProductService.findAll();
			
			return new ModelAndView("newStoreFront").addObject("products", products);
		}else {
			return new ModelAndView("storefront");
		}
	}
}
