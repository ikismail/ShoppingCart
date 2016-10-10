package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.Product;

@Repository(value="productDao")
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	public List<Product> getAllProducts() {
		Session session = sessionFactory.openSession();
		//List<Product> products = session.createQuery("from Product").list();
	 List<Product> products=	 session.createCriteria(Product.class).list();
	 System.out.println(products);
		session.close();
		return products;
	}
	public String test() {
		Session session = sessionFactory.openSession();
		//List<Product> products = session.createQuery("from Product").list();
	 List<Product> list=	 session.createCriteria(Product.class).list();
	 System.out.println(list);
		session.close();
		return "Testing pge";
	}

	public Product getProductById(String productId) {

		// Reading the records from the table
		Session session = sessionFactory.openSession();
		// select * from Product where isbn=i
		// if we call get method,Record doesnot exist it will return null
		// if we call load, if the record doesnt exist it will throw exception
		Product product = (Product) session.get(Product.class, productId);
		session.close();
		return product;
	}

	public void deleteProduct(String productId) {
		Session session = sessionFactory.openSession();
		Product product = (Product) session.get(Product.class, productId);
		session.delete(product);
		session.flush();
		session.close();// close the session
	}
	
	public void addProduct(Product product){
		Session session = sessionFactory.openSession();
		session.save(product);
		session.close();
	}
	
	public void editProduct(Product product){
		Session session = sessionFactory.openSession();
		session.update(product);
		session.flush();
		session.close();
	}

}
