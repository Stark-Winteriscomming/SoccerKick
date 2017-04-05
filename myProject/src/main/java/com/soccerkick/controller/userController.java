package com.soccerkick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user/*")
public class userController {
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	  public void login(Model model) throws Exception {
	  }
	
}
