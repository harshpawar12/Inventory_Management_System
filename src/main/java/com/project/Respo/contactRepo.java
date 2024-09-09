package com.project.Respo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.model.ContactModel;

public interface contactRepo extends JpaRepository<ContactModel, Integer> {
	
	
	@Query("select count(name) from ContactModel m")
	Integer cntByName();

}
