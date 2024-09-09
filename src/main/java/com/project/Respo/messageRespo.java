package com.project.Respo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.model.messageModel;

public interface messageRespo extends JpaRepository<messageModel, Integer> {

	

	@Query("select count (message) from messageModel message")
	Integer getmessagecont();
	
	 
	
}
