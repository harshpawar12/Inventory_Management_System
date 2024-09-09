package com.project.Respo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.model.InventModel;
import java.util.List;


public interface InventRespo extends  JpaRepository<InventModel, Integer>  {
	
	InventModel  findByUsername(String username);

	InventModel findByEmail(String email);
	
	


}

