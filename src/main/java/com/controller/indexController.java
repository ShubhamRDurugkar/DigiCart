package com.controller;

import javax.servlet.http.HttpServletRequest;

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

//	@RequestMapping(value = { "/registerPage" }, method = RequestMethod.GET)
//	public ModelAndView registerPage(ModelAndView model) {
//		model.setViewName("register");
//		return model;
//
//	}

	UserDaoImpl userDaoImpl;

	@RequestMapping(value = "/registerPage", method ={RequestMethod.POST})
	 public ModelAndView saveUser(@ModelAttribute("user") User user,HttpServletRequest req) {
	 ModelAndView mv = new ModelAndView();
	 user.setRole("Role_USER");
	 userDaoImpl.insertUser(user);
	 mv.setViewName("home");
	 return mv;
	 }

//	@RequestMapping(value = { "/loginPage" }, method = RequestMethod.GET)
//	public ModelAndView loginPage(ModelAndView model) {
//		model.setViewName("register");
//		return model;
//	}
}
