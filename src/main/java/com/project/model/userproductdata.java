package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class userproductdata {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String username;
	private String product_name;
	private String category;
	private String sellingprice;
	private Long totalamt;
    private String qnt;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	public String getSellingprice() {
		return sellingprice;
	}
	public void setSellingprice(String sellingprice) {
		this.sellingprice = sellingprice;
	}
	public Long getTotalamt() {
		return totalamt;
	}
	public void setTotalamt(Long totalamt) {
		this.totalamt = totalamt;
	}
	public String getQnt() {
		return qnt;
	}
	public void setQnt(String qnt) {
		this.qnt = qnt;
	}
	@Override
	public String toString() {
		return "userproductdata [id=" + id + ", username=" + username + ", product_name=" + product_name + ", category="
				+ category + ", sellingprice=" + sellingprice + ", totalamt=" + totalamt + ", qnt=" + qnt + "]";
	}
	public userproductdata() {
		super();
		// TODO Auto-generated constructor stub
	}
	public userproductdata(int id, String username, String product_name, String category, String sellingprice,
			Long totalamt, String qnt) {
		super();
		this.id = id;
		this.username = username;
		this.product_name = product_name;
		this.category = category;
		this.sellingprice = sellingprice;
		this.totalamt = totalamt;
		this.qnt = qnt;
	}
	
    
}
