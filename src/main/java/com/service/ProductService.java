package com.service;

import java.util.List;

import com.model.Product;

public interface ProductService {

	public List<Product> getAllProducts();

	Product getProductById(String productId);

	void deleteProduct(String productId);
}
