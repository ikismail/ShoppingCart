
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
import com.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	// Getters and Setters

	public ProductService getProductService() {
		return productService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	// Request Mapping

	@RequestMapping("/getAllProducts")
	public ModelAndView getAllProducts() {
		List<Product> products = productService.getAllProducts();
		return new ModelAndView("productList", "products", products);
	}

	@RequestMapping("getProductById/{productId}")
	public ModelAndView getProductById(@PathVariable(value = "productId") String productId) {
		Product product = productService.getProductById(productId);
		return new ModelAndView("productPage", "productObj", product);
	}

	@RequestMapping("/admin/delete/{productId}")
	public String deleteProduct(@PathVariable(value = "productId") String productId) {
		productService.deleteProduct(productId);
		return "redirect:/getAllProducts";
	}

	
	@RequestMapping(value = "/admin/product/addProduct", method = RequestMethod.GET)
	public String getProductForm(Model model) {
		Product product = new Product();
		// New Arrivals
		// set the category as 1 for the Book book
		product.setProductCategory("Android");
		model.addAttribute("productFormObj", product);
		return "addProduct";

	}

	@RequestMapping(value = "/admin/product/addProduct", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute(value = "productFormObj") Product product, BindingResult result) {
		if(result.hasErrors())
			return "addProduct";
		
		productService.addProduct(product);
		return "redirect:/getAllProducts";
	}
	
	
	@RequestMapping(value="/admin/product/editProduct/{productId}")
	public ModelAndView getEditForm(@PathVariable(value="productId") String productId){
		Product product = productService.getProductById(productId);
		return new ModelAndView("editProduct","editProductObj",product);
	}
	
	@RequestMapping(value="/admin/product/editProduct", method=RequestMethod.POST)
	public String editProduct(@ModelAttribute(value="editProductObj") Product product){
		productService.editProduct(product);
		return "redirect:/getAllProducts";
	}
	 
}
