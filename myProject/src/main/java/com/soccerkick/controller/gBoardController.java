package com.soccerkick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/gBoard/*")
public class gBoardController{
	
	
	
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(Model model) throws Exception {
	}
	
	@RequestMapping(value = "/team_open", method = RequestMethod.GET)
	public void teamOpen(Model model) throws Exception {
	}
	
	@RequestMapping(value = "/place", method = RequestMethod.GET)
	public void place(Model model) throws Exception {
	}
	
	@RequestMapping(value = "/selectPlace", method = RequestMethod.GET)
	public void selectPlace(Model model) throws Exception {
	}
	
}
