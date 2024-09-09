package com.project.Respo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.model.InventModel;
import com.project.model.productModel;

public interface productRespo extends  JpaRepository<productModel , Integer>  {
	
	@Query("select count(product_name) from productModel m")
	Integer getproductCount();
	
	@Query("select sum(buyingprice) from productModel price")
	Double	 getbuyingprice();
	
	@Query("select sum(sellingprice) from productModel price")
	Double	 getSellingprice();

	static InventModel findByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}
	
	}

