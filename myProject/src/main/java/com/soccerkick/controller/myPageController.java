package com.soccerkick.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/myPage/*")
public class myPageController {
	
	@RequestMapping(value = "/messageBoardList", method = RequestMethod.GET)
	public void messageBoardList(Model model) throws Exception {
	}
	
	@RequestMapping(value = "/memberSelectForm", method = RequestMethod.GET)
	public void memberSelectForm(Model model) throws Exception {
	}
	
	@RequestMapping(value ="/ss", method = RequestMethod.GET )
	public void ss(Model model) throws Exception {
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modify(Model model) throws Exception {
	}
	
	@RequestMapping(value = "/message/chatRoom", method = RequestMethod.GET)
	public String chatRoom(Model model) throws Exception {
		return "myPage/chatRoom";
	}
	
}
