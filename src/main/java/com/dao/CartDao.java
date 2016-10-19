package com.dao;

import java.util.List;

import com.model.Cart;

public interface CartDao {

	List<Cart> getAllCarts();

	void deleteCart(String catrId);

	void addCart(Cart cart);
	
}
