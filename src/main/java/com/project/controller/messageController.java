package com.project.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.Respo.messageRespo;

import com.project.model.messageModel;

@Controller
public class messageController {
	
	@Autowired
	private messageRespo repo;
	


	@RequestMapping("/message")
	public String insertMessage(@ModelAttribute messageModel ob)
	{
		repo.save(ob);
		return "userMessage.jsp";
	}
	@RequestMapping("/mess")
	public String isMessage(Model m)
	{
		List<messageModel>al=repo.findAll();
		m.addAttribute("ismsg", al);
		return "message.jsp";
	}
	@RequestMapping("/del/{id}")
	public String ismsgDelete(@PathVariable int id)
	{
		repo.deleteById(id);
		return "redirect:/mess";
	}
	

}
