package com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DemoController {
	
	@GetMapping("/")
	public String showHome() {
		return "home";
	}
	
	//Add view for /leaders.
   @GetMapping("/leaders")
   public String showLeaders() {
	   return "leaders";
   }
   
   //Add view for /system
   @GetMapping("/systems")
   public String showAdmin() {
	   return "admins";
   }
   


}
