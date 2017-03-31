package com.soccerkick.controller;

import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod; 

@Controller
@RequestMapping("/memberSelect/*")
public class memberSelect {

	@RequestMapping(value = "/memberSelectForm", method = RequestMethod.GET)
	public void readGet(Locale locale, Model model) {
	}
	
}  
 