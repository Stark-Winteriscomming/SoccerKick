package com.soccerkick.controller;

import java.io.IOException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.soccerkick.dao.GboardDAO;
import com.soccerkick.vo.GboardVO;
import com.soccerkick.vo.TeamVO;

@Controller
@RequestMapping("/gBoard/*")
public class gBoardController{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
/*	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(Model model) throws Exception {
	}*/
	
	@RequestMapping(value="/apply", method=RequestMethod.POST)
	public String apply(GboardVO vo, RedirectAttributes rttr) throws IOException{
		GboardDAO dao = sqlSession.getMapper(GboardDAO.class);
		dao.insertApply(vo);
		rttr.addFlashAttribute("msg", "SUCCESS");
		  
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
	public ModelAndView board_content(int team_id){
		ModelAndView mv = new ModelAndView();
		GboardDAO dao = sqlSession.getMapper(GboardDAO.class);
		TeamVO vo = dao.execContent(team_id);
 
		mv.addObject("vo", vo);	
		mv.setViewName("/gBoard/read");
		  
		return mv;
	}
	
}
