package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.project.Respo.orderRepo;
import com.project.Respo.userproductrespo;
import com.project.model.orderModel;
import com.project.model.userproductdata;

@Controller
public class orderController {
	
	@Autowired
	orderRepo respo;
	
	@Autowired
	userproductrespo respo1;
	@RequestMapping("/orderr")
	public String isOrder(@ModelAttribute orderModel ob)
	{
		respo.save(ob);
		return "order.jsp";
	}
	@RequestMapping("/AdminOrder")
	public String orderFetch(Model m)
	{
		List<orderModel>al=respo.findAll();
		m.addAttribute("isorder", al);
		return "AdminOrder.jsp";
	}
	@RequestMapping("/deleted/{id}")
	public String orderDelete(@PathVariable int id)
	{
		respo.deleteById(id);
		return "redirect:/AdminOrder.jsp";
	}
	

}
