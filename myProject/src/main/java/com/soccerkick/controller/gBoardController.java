package com.soccerkick.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.soccerkick.dao.GboardDAO;
import com.soccerkick.vo.GboardVO;
import com.soccerkick.vo.MemberSelectVO;
import com.soccerkick.vo.TeamVO;
import com.soccerkick.vo.userVO;

@Controller
@RequestMapping("/gBoard/*")
public class gBoardController{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
/*	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(Model model) throws Exception {
	}*/
	
	@RequestMapping(value="/apply", method=RequestMethod.POST)
	public String apply(GboardVO vo, HttpSession session, String a_apy_position,
			int team_id) throws IOException{
		GboardDAO dao = sqlSession.getMapper(GboardDAO.class);
		System.out.println("position:" + a_apy_position);
		System.out.println("team_id:"+team_id);
		String sid = ((userVO) session.getAttribute("login")).getClient_id();
		dao.insertApply(vo, sid, a_apy_position, team_id);
		
		return "redirect:/";
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
	
	@RequestMapping("/read") 
	public ModelAndView board_content(int team_id, HttpSession session){
		String sid = ((userVO) session.getAttribute("login")).getClient_id();
		System.out.println("sid:"+sid);
		ModelAndView mv = new ModelAndView();
		GboardDAO dao = sqlSession.getMapper(GboardDAO.class);
		TeamVO vo = dao.execContent(team_id);
		mv.addObject("vo", vo);	
		mv.setViewName("/gBoard/read"); 
		return mv;
	}
	
}
