package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeloginController {

	@RequestMapping("/index")
	public ModelAndView sayIndex(){
		return new ModelAndView("index","message","You are welcome Mr.Ismail");
	}
	
	@RequestMapping("/hello")
	public ModelAndView sayHello(){
		return new ModelAndView("hello","hello","Hello Mr.Ismail");
	}
}
