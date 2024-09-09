package com.project.Respo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.project.model.userproductdata;




public interface userproductrespo  extends JpaRepository<userproductdata, Integer>{
	List<userproductdata> findByUsername(String username);
	    @Query("SELECT SUM(u.totalamt) FROM userproductdata u WHERE u.username = :username")
	    Integer getSumByUsername(@Param("username") String username);
	    
	    
	}
