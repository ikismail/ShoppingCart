package com.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.Product;
import com.model.User;
import com.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/admin/getAllUsers")
	public ModelAndView getAllUsers(){
		List<User> users = userService.getAllUsers();
		return new ModelAndView("UserList","users",users);
	}
	
	@RequestMapping("cart/getUserById/{userId}")
	public ModelAndView getProductById(@PathVariable(value = "userId") String userId) {
		User user = userService.getUserById(userId);
		return new ModelAndView("addCart", "userObj", user);
	}
	
	@RequestMapping("/user/delete/{userId}")
	public String deleteUser(@PathVariable(value = "userId") String userId) {
		userService.deleteUser(userId);
		//http://localhost:8080/shoppingCart/getAllProducts
		return "redirect:/admin/getAllUsers";
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String getUsertForm(Model model) {
		User user = new User();
		// New Arrivals
		// set the category as 1 for the Book book
		//product.setProductCategory("Android");
		user.setGender("male");
		user.setRoleType("ROLE_USER");
		model.addAttribute("userFormObj", user);
		return "register";

	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute(value = "userFormObj") User user, BindingResult result) {
		if(result.hasErrors())
			return "register";
		userService.addUser(user);
		return "redirect:/login";
	}
	
}
