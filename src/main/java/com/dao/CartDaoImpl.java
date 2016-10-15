package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Cart;

@Repository
public class CartDaoImpl implements CartDao {

	@Autowired
	private SessionFactory sessionFactory;

	public List<Cart> getAllCarts() {
		Session session = sessionFactory.openSession();
		List<Cart> carts = session.createCriteria(Cart.class).list();
		System.out.println(carts);
		session.close();
		return carts;
	}

	public void deleteCart(String cartId) {
		Session session = sessionFactory.openSession();
		Cart cart = (Cart) session.get(Cart.class, cartId);
		session.delete(cart);
		session.flush();
		session.close();// close the session
	}

	public void addCart(Cart cart) {
		Session session = sessionFactory.openSession();
		session.save(cart);
		session.close();
	}
}
