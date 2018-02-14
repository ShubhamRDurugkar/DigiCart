package com.controller;

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

	// @RequestMapping(value = { "/registerPage" }, method = RequestMethod.GET)
	// public ModelAndView registerPage(ModelAndView model) {
	// model.setViewName("register");
	// return model;
	//
	// }

	// @Autowired
	UserDaoImpl userDaoImpl;

	@RequestMapping(value = "/registerPage", method = RequestMethod.GET)
	public ModelAndView showRegister() {
		ModelAndView mav = new ModelAndView();
		// This class can map the view with it's corresponding Model class
		// Thus we use the object of this class to take reference of model class
		// and name of view
		mav.addObject("user", new User());// class
		mav.setViewName("register");// jsp
		return mav;

	}

	@RequestMapping(value = "/registerUser", method =RequestMethod.POST)
	 public ModelAndView saveUser(@ModelAttribute("user") User user) {
	 ModelAndView mv = new ModelAndView();
	 mv.getModel();
	 user.setRole("Role_USER");
	 user.setEnabled(true);
	 userDaoImpl.insertUser(user);
	 mv.setViewName("home");
	 return mv;
	 }

	// @RequestMapping(value = { "/loginPage" }, method = RequestMethod.GET)
	// public ModelAndView loginPage(ModelAndView model) {
	// model.setViewName("register");
	// return model;
	// }
}
