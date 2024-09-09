package com.project.Respo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.model.orderModel;

public interface orderRepo extends JpaRepository<orderModel, Integer> {
	
	@Query("select count(name) from orderModel o")
	int getnameCount();
	

}
