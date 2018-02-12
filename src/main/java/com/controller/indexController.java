package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

	UserDaoImpl userDaoImpl;

	@RequestMapping(value = "/saveRegister", method = RequestMethod.POST)
	public String add(Model model) {
       
//        User user=new User();
//        user.setRole("ROLE_USER");
//        userDaoImpl.insertUser(user);
       model.addAttribute("user", new User());
        return "home";
    }
	// public ModelAndView saveUser(@ModelAttribute("user") User user) {
	// ModelAndView mv = new ModelAndView();
	// user.setRole("Role_USER");
	// userDaoImpl.insertUser(user);
	// mv.setViewName("index");
	// return mv;
	// }

	@RequestMapping(value = { "/loginPage" }, method = RequestMethod.GET)
	public ModelAndView loginPage(ModelAndView model) {
		model.setViewName("register");
		return model;
	}
}
