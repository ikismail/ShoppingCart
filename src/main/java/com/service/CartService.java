package com.service;

import java.util.List;

import com.model.Cart;

public interface CartService {

	List<Cart> getAllCarts();

	void deleteCart(String catrId);

	void addCart(Cart cart);

}
