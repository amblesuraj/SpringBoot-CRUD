package com.ngu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ngu.Model.Employee;

@Controller
@RequestMapping("page")
public class PageController {

	@RequestMapping(value = {"","/","/home"},method = RequestMethod.GET)
	public ModelAndView home(Model model)
	{
		ModelAndView mv = new ModelAndView("Page", "message", "Welcome to spring mvc boot Home 2");
		return mv;
	}
	

	
	
}
