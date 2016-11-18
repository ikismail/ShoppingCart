package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	
	@RequestMapping({ "/index", "/index1" })
		public String sayIndex() {
			return "index1";
		}

		@RequestMapping("/hello")
		public ModelAndView sayHello() {
			return new ModelAndView("hello", "hello", "Hello Mr.Ismail");
		}

		@RequestMapping("/login")
		public String login(@RequestParam(value="error",required=false) String error, @RequestParam(value="logout",required=false)String logout, Model model) {
			if(error != null)
				model.addAttribute("error", "Invalid username and Password");
			if(logout!=null)
				model.addAttribute("logout", "You have logged out successfully");
			return "login";
		}

		@RequestMapping("/aboutus")
		public String sayAbout() {
			return "aboutUs";
		}
		
}
