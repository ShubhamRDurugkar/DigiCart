package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.daoimpl.UserDaoImpl;
import com.model.User;

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
	@Autowired
	UserDaoImpl userDaoImpl;
	@RequestMapping(value="/saveRegister",method=RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute("user")User user){
		ModelAndView mv=new ModelAndView();
		user.setRole("Role_USER");
		userDaoImpl.insertUser(user);
		mv.setViewName("index");
		return mv;
	}
//	@RequestMapping(value = { "/loginPage" }, method = RequestMethod.GET)
//	public ModelAndView loginPage(ModelAndView model) {
//		model.setViewName("register");
//		return model;
//
//	}
}
