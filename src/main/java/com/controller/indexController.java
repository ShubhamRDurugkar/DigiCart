package com.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.dao.UserDao;

@Controller
public class indexController {
@Autowired
private UserDao userdao;
	 @RequestMapping(value={"/","/index"})
    public ModelAndView indexPage(){
		 ModelAndView mv=new ModelAndView("index");
		 mv.addObject("title","/index");  
		 mv.addObject("User",userdao.show());
		 mv.addObject("userClickindex", true);
		 return mv;
    }
}

