package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeloginController {

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
