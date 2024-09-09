package com.project.Respo;

import javax.persistence.criteria.CriteriaBuilder.In;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.project.model.feedbackModel;

public interface FeedbackRepo extends JpaRepository<feedbackModel, Integer> {
	
	@Query("select count(name) from feedbackModel m")
	Integer cntbyName();

}
