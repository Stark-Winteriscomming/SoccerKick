package com.soccerkick.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/user/*")
@SessionAttributes("userId")
public class userController {
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void login(Model model) throws Exception {
	}
	
	// login check
	@RequestMapping(value = "/loginCheck", method = RequestMethod.GET)
	public String loginCheck(String userId, HttpSession session){
//		request.getSession().setAttribute("userId", userId);
		session.setAttribute("userId", userId);
		System.out.println("session: " + session.getAttribute("userId"));
		return "redirect:/";
	} 
}
