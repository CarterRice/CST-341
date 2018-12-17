package com.gcu.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.sonatype.plexus.components.cipher.Base64;
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

import org.springframework.web.multipart.commons.CommonsMultipartFile;
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
		//throw new RuntimeException("Dummy Exception");
		return new ModelAndView("addProduct", "product", new product(0,"","","",null,null,""));
	}
	
	/**
	 * Controller for updating a product in the database.
	 *
	 * @param  The product model
	 * @param  Results of input
	 * @return	Model and view is returned (Store Front page upon a successful update)
	 */
	@RequestMapping(path="/view", method=RequestMethod.GET)
	public ModelAndView displayProducts() {
		List<product> products = new ArrayList<product>();
		
		products = ProductService.findAll();
		
		return new ModelAndView("newStoreFront").addObject("products", products);
	}
	
	/**
	 * Controller for displaying the update view where a user can update or delete products.
	 *
	 * @param  Path
	 * @return	Model and view is returned (Update Front page upon a successful update)
	 */
	@RequestMapping(path="/updateView", method=RequestMethod.GET)
	public ModelAndView displayUpdateForm() {
		List<product> products = new ArrayList<product>();
		
		products = ProductService.findAll();
		
		return new ModelAndView("updateProduct").addObject("products", products);
	}

	/**
	 * Controller for creating a new product in the database.
	 *
	 * @param  The product model
	 * @param  Results of input
	 * @return	Model and view is returned (The confirmation page upon successful creation)
	 */
	@RequestMapping(path="/newProduct", method=RequestMethod.POST)
	public ModelAndView addProduct(@Valid @ModelAttribute("addProduct") product newProduct, BindingResult result) {	
		//Check for errors
		if(result.hasErrors()) {
			return new ModelAndView("storefront", "newProduct", newProduct);
		}else {				
			//Check to make sure a text file was submitted and there are bytes to transfer
			if((newProduct.getTextFilePath() != null)&&(newProduct.getTextFilePath().length > 0)&&(!newProduct.getTextFilePath().equals(""))) {																			
				
				//If there is a file then the model is sent to the business service like usual
				if(ProductService.test(newProduct) == true) {
					
					List<product> products = new ArrayList<product>();
					
					products = ProductService.findAll();
					
					return new ModelAndView("newStoreFront").addObject("products", products);
					
				}else {
					return new ModelAndView("storefront", "newProduct", newProduct);
				}
			}else {
				return new ModelAndView("storefront", "newProduct", newProduct);
			}			
		}
	}
	
	/**
	 * Controller for updating a product in the database.
	 *
	 * @param  The product model
	 * @param  Results of input
	 * @return	Model and view is returned (Store Front page upon a successful update)
	 */
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
	
	/**
	 * Controller for determining which product is to be updated.
	 *
	 * @param  HTTP GET argument
	 * @return	Model and view is returned (Update page to update product)
	 */
	@RequestMapping(path="/update/{argument}", method=RequestMethod.GET)
	public ModelAndView updateFormProduct(@PathVariable("argument") String argument) {
		int id = Integer.parseInt(argument);
		
		product p = ProductService.findById(id);
		
		//product prod = new product(101,"NewTest","NewTest","5","FAIL","FAIL");
		
		return new ModelAndView("updateProductForm", "product", p);
	}
	
	/**
	 * Controller for directing user to product deletion page
	 *
	 * @param  HTTP GET argument
	 * @return	Model and view is returned (Delete page to delete product)
	 */
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
