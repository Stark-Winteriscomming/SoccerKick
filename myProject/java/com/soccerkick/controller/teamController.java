package com.soccerkick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/team/*")
public class teamController {
	
	@RequestMapping(value = "/teamCreateForm", method = RequestMethod.GET)
	public void teamCreateForm(Model model) throws Exception {
	}

}
