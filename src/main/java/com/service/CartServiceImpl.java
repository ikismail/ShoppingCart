package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CartDao;
import com.model.Cart;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDao cartDao;

	@Transactional
	public List<Cart> getAllCarts() {
		return cartDao.getAllCarts();
	}

	public void deleteCart(String cartId) {
		cartDao.deleteCart(cartId);
	}
	
	public void addCart(Cart cart) {
		cartDao.addCart(cart);
	}

}
