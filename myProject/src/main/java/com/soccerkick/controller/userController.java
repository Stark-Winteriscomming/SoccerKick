package com.soccerkick.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.soccerkick.dao.JoinDAO;
import com.soccerkick.dao.userDAO;
import com.soccerkick.vo.JoinVO;
import com.soccerkick.vo.userVO;

@Controller
@RequestMapping("/user/*")
public class userController {
	
	@Inject
	private userDAO dao;
	
	@Autowired
	SqlSessionTemplate sqlSession;
	  
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	  public String login(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();

		if(session.getAttribute("login")!=null){  
			return "redirect:/"; 
		} 
		else 
			return "/user/login";
	  }
	
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		
		session.invalidate(); 
		return "redirect:/";
	}
	
	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	  public String loginCheck(Model model, userVO vo, RedirectAttributes rttr, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		
		int result = dao.userCheck(vo);
		
		if(result == 1){
			session.setAttribute("login", vo);
			return "redirect:/";
		}
		else
			return "redirect:/user/login";
	  }
	
	@RequestMapping(value = "/join_form", method = RequestMethod.GET)
	public void joinForm(Model model) throws Exception {
	}
	
	@RequestMapping(value="/join.do", method=RequestMethod.POST)
	public String joinProcess(JoinVO vo){
	
		String resPage = "";
		JoinDAO dao = sqlSession.getMapper(JoinDAO.class);
		int result = dao.execInsert(vo);  
		
		if(result == 1){
			resPage = "/user/login";
		}else{
			resPage = "/ueser/login";
		}	
		
		return resPage;	
		
	}

}
