package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Cart;

@Repository
public class CartDaoImpl implements CartDao {

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public Cart getCartByCartId(String CartId) {
		Session session = sessionFactory.openSession();
		Cart cart = (Cart)session.get(Cart.class, CartId);
		//System.out.println(cart.getCartId() + " " + cart.getCartItem());
		System.out.println(cart);
		return cart;
		
	}

}
