package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.project.Respo.FeedbackRepo;
import com.project.model.feedbackModel;

@Controller
public class feedbackController {

	@Autowired
	private FeedbackRepo repo;
	@RequestMapping("/rate")
	public String isFeedback(@ModelAttribute feedbackModel f)
	{
		repo.save(f);
		return "Feedback.jsp";
	}
	@RequestMapping("/feedback")
	public String isFetchedFeedback(Model m)
	{
		List<feedbackModel>al=repo.findAll();
		m.addAttribute("isfeedback", al);
		return "AFeedback.jsp";
	}
	@RequestMapping("/d/{id}")
	public String isFeedbackDelete(@PathVariable int id)
	{
		repo.deleteById(id);
		return "redirect:/feedback";
	}
	
}
