package com.soccerkick.controller;

import java.util.Locale;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/chang/*")
public class chang {

	@RequestMapping(value = "/join_form", method = RequestMethod.GET)
	public void readGet(Locale locale, Model model) {
	}	
}