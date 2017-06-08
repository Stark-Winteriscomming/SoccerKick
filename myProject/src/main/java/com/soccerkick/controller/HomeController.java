package com.soccerkick.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.soccerkick.dao.GboardDAO;
import com.soccerkick.vo.TeamVO;

@Controller
public class HomeController {

	@Autowired
	SqlSessionTemplate sqlSession;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(Model model, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/index");    
		return mv;  
	}   
	
	@RequestMapping(value = "/enter", method = RequestMethod.GET)
	public ModelAndView home(Model model, HttpSession session) {
  
		ModelAndView mv = new ModelAndView();
		GboardDAO dao = sqlSession.getMapper(GboardDAO.class);
		if (session.getAttribute("login") == null) {
			System.out.println("session: login is null...");

			// return login page
			mv.setViewName("/user/login");
			return mv;
		}
		ArrayList<TeamVO> list = dao.execSelect();
		mv.addObject("list", list);
		mv.setViewName("/home"); 

		return mv;
	}
	
	@RequestMapping("/arraymain.do")
	public String arraymain(){
		
		return "/array";
	}
	
	@RequestMapping("/array.do")
	public ModelAndView array(String[] name){
		for (String str : name) {
			System.out.println(str);
		}
		return null;
	}
}
