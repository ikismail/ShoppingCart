package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ProductDao;
import com.model.Product;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;

	public ProductDao getProductDao() {
		return productDao;
	}

	public void setProductDao(ProductDao productDao) {
		this.productDao = productDao;
	}

	@Transactional
	public List<Product> getAllProducts() {
		return productDao.getAllProducts();
	}

	@Transactional
	public Product getProductById(String productId) {
		return productDao.getProductById(productId);
	}

	@Transactional
	public void deleteProduct(String productId) {
		productDao.deleteProduct(productId);
	}
	
	@Transactional
	public void addProduct(Product product){
		productDao.addProduct(product);
	}

	@Transactional
	public void editProduct(Product product){
		productDao.editProduct(product);
	}
}
