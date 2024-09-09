package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.Respo.contactRepo;
import com.project.model.ContactModel;

@Controller
public class contactController {
	
	@Autowired
	private contactRepo repo;
	
	@RequestMapping("/contact")
	public String isContact(@ModelAttribute ContactModel ob)
	{
		repo.save(ob);
		return "contactUs.jsp";
		
	}
	@RequestMapping("/complent")
	public String isAdminFetch(Model m)
	{
		List<ContactModel>al=repo.findAll();
		System.out.println(al);
		m.addAttribute("iscomp", al);
		return "complaints.jsp";
	}
	@RequestMapping("/de/{id}")
	public String isContDel(@PathVariable int id)
	{
		repo.deleteById(id);
		return "redirect:/complent";
	}

}
