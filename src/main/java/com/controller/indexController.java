package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.daoimpl.CategoryDaoImpl;
import com.daoimpl.UserDaoImpl;
import com.model.Category;
import com.model.User;

@Controller
public class indexController {

	@Autowired
	CategoryDaoImpl categoryDaoImpl;

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public ModelAndView homePage(ModelAndView model) {
		model.setViewName("home");
		return model;

	}
	/*AboutUs*/
	@RequestMapping(value = "/aboutUs")
	public ModelAndView about() {		
		ModelAndView mv = new ModelAndView("about");		
		mv.addObject("title","About Us");
		mv.addObject("userClickAbout",true);
		return mv;				
	}	
	/*ContactUs*/
	@RequestMapping(value = "/contactUs")
	public ModelAndView contact() {		
		ModelAndView mv = new ModelAndView("contact");		
		mv.addObject("title","Contact Us");
		mv.addObject("userClickContact",true);
		return mv;				
	}	


	/* LOGIN */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(name = "error", required = false) String error,@RequestParam(name = "logout", required = false) String logout) {
		ModelAndView mv = new ModelAndView("login");
		if (error != null) {
			mv.addObject("message", "Invalid credentials..");
		}
		if (logout != null) {
			mv.addObject("logout", "You are successfully logged out..");
		}
		mv.addObject("title", "login");
		return mv;

	}

	/* Access denied page */
	@RequestMapping(value = "/access-denied")
	public ModelAndView accessDenied() {
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("title", "403-Access Denied");
		mv.addObject("errorTitle", "Caught you..");
		mv.addObject("errorDescription", "You are not authorized to access this page.");
		mv.addObject("title", "403 Access Denied");
		return mv;

	}

	@Autowired
	UserDaoImpl userDaoImpl;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView showRegister() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("user", new User());// class
		mav.setViewName("register");// jsp
		return mav;

	}

	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute("user") User user) {
		ModelAndView mv = new ModelAndView();
		user.setRole("Role_USER");
		user.setEnabled(true);
		userDaoImpl.insertUser(user);
		mv.setViewName("home");
		return mv;
	}
	/*Logout*/
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {
		// Invalidates HTTP Session, then unbinds any objects bound to it.
	    // Removes the authentication from securitycontext 		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
		
		return "redirect:/login?logout";
	}

	// Getting all categories to Product form
	@ModelAttribute("categories")
	public List<Category> getCategories() {
		return categoryDaoImpl.getAllCategories();
	}

}
