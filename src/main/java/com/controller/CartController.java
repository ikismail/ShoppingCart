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

import com.model.Cart;
import com.service.CartService;

@Controller
public class CartController {

	@Autowired
	private CartService cartService;

  
	
	@RequestMapping("/getAllCarts")
	public ModelAndView getAllCarts() {
		
		List<Cart> carts = cartService.getAllCarts();
		return new ModelAndView("CartList", "carts", carts);
	}
	
	@RequestMapping(value = "/cart/addCart", method = RequestMethod.GET)
	public String getProductForm(Model model) {
		Cart cart = new Cart();
		model.addAttribute("cartFormObj", cart);
		return "addCart";

	}
	

	@RequestMapping(value = "/cart/addCart", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute(value = "cartFormObj") Cart cart, BindingResult result) {
		if(result.hasErrors()){
			System.out.println("Has Error"+result);
			return "addCart";
		}
			
		cartService.addCart(cart);
		return "redirect:/getAllProducts";
	}
	
	@RequestMapping("/delete/{cartId}")
	public String deleteProduct(@PathVariable(value = "cartId") String cartId) {		
		cartService.deleteCart(cartId);
		return "redirect:/getAllProducts";
	}
}
