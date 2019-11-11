package com.ngu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PageController {

	@RequestMapping(value = {"/","/home"},method = RequestMethod.GET)
	public ModelAndView home()
	{
		ModelAndView mv = new ModelAndView("index", "message", "Welcome to spring mvc boot Home 2");
		return mv;
	}
	
	@RequestMapping(value = "/page",method = RequestMethod.GET)
	public ModelAndView page()
	{
		ModelAndView mv = new ModelAndView("Page");
		mv.addObject("title", "my Page");
		return mv;
	}
	
	@RequestMapping(value = "/all",method = RequestMethod.GET)
	public ModelAndView All()
	{
		ModelAndView mv = new ModelAndView("Page");
		mv.addObject("title", "All");
		mv.addObject("messageAll", "All information");
		return mv;
	}
	
	
}
