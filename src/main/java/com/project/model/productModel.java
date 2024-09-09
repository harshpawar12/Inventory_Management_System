package com.project.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class productModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String product_name;
	private String category;
	private String instock;
	private String buyingprice;
	private String sellingprice;
	private String date;
	private String image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getInstock() {
		return instock;
	}
	public void setInstock(String instock) {
		this.instock = instock;
	}
	public String getBuyingprice() {
		return buyingprice;
	}
	public void setBuyingprice(String buyingprice) {
		this.buyingprice = buyingprice;
	}
	public String getSellingprice() {
		return sellingprice;
	}
	public void setSellingprice(String sellingprice) {
		this.sellingprice = sellingprice;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "productModel [id=" + id + ", product_name=" + product_name + ", category=" + category + ", instock="
				+ instock + ", buyingprice=" + buyingprice + ", sellingprice=" + sellingprice + ", date=" + date
				+ ", image=" + image + "]";
	}
	public productModel(int id, String product_name, String category, String instock, String buyingprice,
			String sellingprice, String date, String image) {
		super();
		this.id = id;
		this.product_name = product_name;
		this.category = category;
		this.instock = instock;
		this.buyingprice = buyingprice;
		this.sellingprice = sellingprice;
		this.date = date;
		this.image = image;
	}
	public productModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
}
