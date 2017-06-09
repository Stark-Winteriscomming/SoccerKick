package com.soccerkick.controller;

import java.io.IOException;  
import java.util.Calendar;

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
import com.soccerkick.dao.MatchingDAO;
import com.soccerkick.vo.GboardVO;
import com.soccerkick.vo.MatchingVO;
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
	
	@RequestMapping("/team_open")
	public String team_open(){
		
		return "/gBoard/team_open";
	}
	
	@RequestMapping("/matching_controller")
	public String matching_controller(MatchingVO vo, HttpSession session, String startdate, String startclock,String enddate, String endclock,
			String phone1, String phone2, String phone3, String email1, String email2){
		Calendar c = Calendar.getInstance();
		String ntime = new String();
		ntime = String.valueOf(c.get(Calendar.YEAR));
		ntime += String.valueOf(c.get(Calendar.MONTH));
		ntime += String.valueOf(c.get(Calendar.DATE));
		String sid = ((userVO) session.getAttribute("login")).getClient_id();
		MatchingDAO  dao = sqlSession.getMapper(MatchingDAO.class);
		String phone = phone1 + "-" + phone2 + "-" + phone3;
		String email = email1 + "@" + email2;
		String startday = startdate+" "+startclock;
		String endday = enddate+" "+endclock;
		System.out.println("startday:"+startdate+" "+startclock);
		System.out.println("endday:"+enddate+" "+endclock);
		System.out.println("sid:"+sid);
		vo.setHost(sid);
		vo.setPhone(phone);
		vo.setEmail(email);
		vo.setStartday(startday);
		vo.setEndday(endday);
		dao.execInsert(vo);
		return "redirect:/gBoard/team_open";
	}
	
	
	@RequestMapping(value = "/place", method = RequestMethod.GET)
	public void place(Model model) throws Exception {
	}
	
	@RequestMapping(value = "/selectPlace", method = RequestMethod.GET)
	public void selectPlace(Model model) throws Exception {
	}
	

	@RequestMapping("/read")   
	public ModelAndView board_content(int team_id, HttpSession session){
		/*String sid = ((userVO) session.getAttribute("login")).getClient_id();
		System.out.println("sid:"+sid); */
		ModelAndView mv = new ModelAndView();
		GboardDAO dao = sqlSession.getMapper(GboardDAO.class);
		TeamVO vo = dao.execContent(team_id);
		mv.addObject("vo", vo);	  
		mv.setViewName("/gBoard/read"); 
		return mv;
	}  
	
}
