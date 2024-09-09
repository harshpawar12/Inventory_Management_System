package com.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.Respo.InventRespo;
import com.project.model.InventModel;

@Controller
public class inventController {
	
	@Autowired
	InventRespo repo;
	
	
	
	
	
	@RequestMapping("/")
	public String registrer()
	{
		return "RegistrationForm.jsp";
	}
	@RequestMapping("/register")
	public String isinsert(@ModelAttribute InventModel ob)
	{
		repo.save(ob);
		return "RegistrationForm.jsp";
		
	}
	@RequestMapping("/login1")
	public String isLogin()
	{
		return "login.jsp";
	}
	@RequestMapping("/login")
	public String Logincorrect(@RequestParam String username,@RequestParam String password,HttpSession session)
	{
		InventModel ob=repo.findByUsername(username);
		
		if(ob!=null && ob.getUsername().equalsIgnoreCase(username)&&ob.getPassword().equals(password))
		{
		   session.setAttribute("username", username);
			return "userpage.jsp";
		}
		else if( username.equals("admin") && password.equals("12345"))
		{
			return "/home";
		}
		return "/login.jsp";
		
	}
	 @GetMapping("/invalidateSession")
	    public String invalidateSession(HttpSession session) {
	        session.invalidate(); // Invalidate the session
	        return "login.jsp";
	    }
	
	
}
