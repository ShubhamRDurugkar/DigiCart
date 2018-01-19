package com.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class indexController {

	 @RequestMapping("/home")
    public String indexPage(){
		    return "home";
    }
}

