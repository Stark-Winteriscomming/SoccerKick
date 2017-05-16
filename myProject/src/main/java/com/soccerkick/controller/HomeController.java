package com.soccerkick.controller;

import java.util.ArrayList;

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
	public ModelAndView home(Model model) {
		
		ModelAndView mv = new ModelAndView();
		GboardDAO dao = sqlSession.getMapper(GboardDAO.class);
		
		ArrayList<TeamVO> list = dao.execSelect();
		mv.addObject("list", list);
		mv.setViewName("/home");	
		
		return mv;
	}
}
