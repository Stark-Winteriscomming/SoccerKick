package com.soccerkick.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.mybatis.spring.SqlSessionFactoryBean;

import com.soccerkick.dao.MemberSelectDAO;
import com.soccerkick.vo.MemberSelectVO;


@Controller
@RequestMapping("/myPage/*")
public class meberSelectController {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@RequestMapping("/memberSelectForm")
	public ModelAndView memberSelectForm(){
		ModelAndView mv = new ModelAndView();
		MemberSelectDAO dao = sqlSession.getMapper(MemberSelectDAO.class);
		ArrayList<MemberSelectVO> list = dao.execSelectt();
		mv.addObject("list", list);
		mv.setViewName("/myPage/memberSelectForm");
		
		return mv;
	}
	
	
	
	@RequestMapping("/memberSelectPopup")
	public ModelAndView memberSelectPopup(){
		ModelAndView mv = new ModelAndView();
		MemberSelectDAO dao = sqlSession.getMapper(MemberSelectDAO.class);
		ArrayList<MemberSelectVO> list = dao.execSelect();
		mv.addObject("list", list);
		mv.setViewName("/myPage/memberSelectPopup");
		
		return mv;
	}
	/*@RequestMapping("/memberSelectPopup")
	public ModelAndView memberSelectPopup(HttpSession session){
		//String sid =(String)session.getAttribute("sid");
		ModelAndView mv = new ModelAndView();
		MemberSelectDAO dao = sqlSession.getMapper(MemberSelectDAO.class);
	
			ArrayList<MemberSelectVO> list = dao.execSelect();
			
			mv.addObject("list", list);
			mv.setViewName("/myPage/MemberSelectPopup");
			
		
		
		
		
		return mv;
	}*/

	@RequestMapping(value="/memberSelect_save.do", method=RequestMethod.POST)
	public String memberSelect_save(MemberSelectVO vo)
	throws IOException{
	MemberSelectDAO dao = sqlSession.getMapper(MemberSelectDAO.class);
	
	
	int result = dao.execInsert(vo);
	return "redirect:/myPage/memberSelectForm";
	
	}
}
