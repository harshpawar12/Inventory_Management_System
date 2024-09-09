package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class feedbackModel {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)  
    @Column(name = "idd", nullable = false)
    private Integer idd;
	private String name;
	private String email;
	private String comment;
	public Integer getIdd() {
		return idd;
	}
	public void setIdd(Integer idd) {
		this.idd = idd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	@Override
	public String toString() {
		return "feedbackModel [idd=" + idd + ", name=" + name + ", email=" + email + ", comment=" + comment + "]";
	}
	
	
	
	

}
