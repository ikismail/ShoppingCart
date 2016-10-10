package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dao.ProductDao;

@Controller
public class HomeController {

//	@Autowired
//	private ProductService productService;
//	
//	// Getters and Setters
//
//	public ProductService getProductService() {
//		return productService;
//	}
//
//	public void setProductService(ProductService productService) {
//		this.productService = productService;
//	}	
	
	//Request Mapping
	
	@Autowired
	ProductDao productDao;
	
	@RequestMapping("/test")
	public String testpge(){
		productDao.test();
	return "Welcome";
	}
	
	@RequestMapping({ "/index", "/index1" })
		public String sayIndex() {
			return "index1";
		}

		@RequestMapping("/hello")
		public ModelAndView sayHello() {
			return new ModelAndView("hello", "hello", "Hello Mr.Ismail");
		}

		@RequestMapping("/login")
		public String saylogin() {
			return "login";
		}

		@RequestMapping("/register")
		public String sayRegister() {
			return "register";
		}
		@RequestMapping("/aboutus")
		public String sayAbout() {
			return "aboutUs";
		}
		
}
