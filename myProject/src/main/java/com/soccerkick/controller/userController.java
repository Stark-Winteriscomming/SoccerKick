package com.soccerkick.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.soccerkick.dao.userDAO;
import com.soccerkick.vo.userVO;

@Controller
@RequestMapping("/user/*")
public class userController {
	
	@Inject
	private userDAO dao;
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	  public void login(Model model) throws Exception {
	  }
	
	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	  public String loginCheck(Model model, userVO vo, RedirectAttributes rttr) throws Exception {
		int result = dao.userCheck(vo);
		
		if(result == 1)
			return "redirect:/";
		else
			return "redirect:/user/login";
		
	  }
	
}
