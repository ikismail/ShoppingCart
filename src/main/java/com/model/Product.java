package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Min;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="item")
public class Product {

	@Id
	@Column(name="Id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private String productId;
	@Column(name="Description")
	private String productDescription;
	@Column(name="Manufacturer")
	private String productManufacturer;
	@Column(name="Name")
	@NotEmpty(message="Name is mandatory")
	private String productName;
	@Column(name="Price")
	@Min(value=100, message="Minimum value should be greater than 100")
	private double productPrice;
	@Column(name="Unit")
	private String unitStock;
	@ManyToOne
	@JoinColumn(name="Category")
	private Categories category;

//	Getters and Setter
	
	public String getProductId() {
		return productId;
	}

	public Categories getCategory() {
		return category;
	}

	public String getDescription() {
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

	public void setProductCategory(Categories category) {
		this.category = category;
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
	public Product(String productId, Categories productCategory, String productDescription, String productManufacturer,
			String productName, double productPrice, String unitStock) {
		super();
		this.productId = productId;
		this.category = productCategory;
		this.productDescription = productDescription;
		this.productManufacturer = productManufacturer;
		this.productName = productName;
		this.productPrice = productPrice;
		this.unitStock = unitStock;
	}
	public Product(){
		
	}

	
	
}
