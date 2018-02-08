package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class indexController {

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public ModelAndView homePage(ModelAndView model) {
		model.setViewName("home");
		return model;

	}
	@RequestMapping(value = { "/registerPage" }, method = RequestMethod.GET)
	public ModelAndView registerPage(ModelAndView model) {
		model.setViewName("register");
		return model;

	}
	@RequestMapping(value = { "/loginPage" }, method = RequestMethod.GET)
	public ModelAndView loginPage(ModelAndView model) {
		model.setViewName("register");
		return model;

	}
}
