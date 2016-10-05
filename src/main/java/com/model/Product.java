package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product")
public class Product {

	@Id
	@Column
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String productId;
	@Column
	private String productCategory;
	@Column
	private String productDescription;
	@Column
	private String productManufacturer;
	@Column
	private String productName;
	@Column
	private double productPrice;
	@Column(name="stockunit")
	private String unitStock;

//	Getters and Setter
	
	public String getProductId() {
		return productId;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public String getProductManufacturer() {
		return productManufacturer;
	}

	public String getProductName() {
		return productName;
	}

	public double getProductPrice() {
		return productPrice;
	}

	public String getUnitStock() {
		return unitStock;
	}

	public void setProductId(String productId) {
		this.productId = productId;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public void setProductManufacturer(String productManufacturer) {
		this.productManufacturer = productManufacturer;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}

	public void setUnitStock(String unitStock) {
		this.unitStock = unitStock;
	}

	//Constructors
	public Product(String productId, String productCategory, String productDescription, String productManufacturer,
			String productName, double productPrice, String unitStock) {
		super();
		this.productId = productId;
		this.productCategory = productCategory;
		this.productDescription = productDescription;
		this.productManufacturer = productManufacturer;
		this.productName = productName;
		this.productPrice = productPrice;
		this.unitStock = unitStock;
	}
	public Product(){
		
	}

	
	
}
