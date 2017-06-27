package com.soccerkick.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.soccerkick.dao.FormationDAO;
import com.soccerkick.dao.GboardDAO;
import com.soccerkick.dao.MatchingDAO;
import com.soccerkick.dao.PlaceDAO;
import com.soccerkick.dao.TeamCreateDAO;
import com.soccerkick.dao.TeamDAO;
import com.soccerkick.vo.Formation_41212VO;
import com.soccerkick.vo.Formation_4231VO;
import com.soccerkick.vo.Formation_433VO;
import com.soccerkick.vo.GameBoardVO;
import com.soccerkick.vo.GboardVO;
import com.soccerkick.vo.MatchingVO;
import com.soccerkick.vo.PlaceVO;
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
	

	@RequestMapping("/gameList")
	public String gameList(){
		
		return "/gBoard/gameList";
	}
	
	
		

	@RequestMapping(value = "/gameList", method = RequestMethod.GET)
	public ModelAndView home(Model model) {

		ModelAndView mv = new ModelAndView();
		GboardDAO dao = sqlSession.getMapper(GboardDAO.class);
		ArrayList<GameBoardVO> list = dao.execGameList();
		mv.addObject("list", list);
		mv.setViewName("/gBoard/gameList");

		return mv;
	}
	
	@RequestMapping("/team_open")
	public ModelAndView team_open() {
		ModelAndView mv = new ModelAndView();
		GboardDAO dao = sqlSession.getMapper(GboardDAO.class);
		ArrayList<PlaceVO> list = dao.execPlace();
		mv.addObject("list",list);
		mv.setViewName("/gBoard/team_open");
		return mv;
	}
	@RequestMapping("/matching_controller")
	public String matching_controller(MatchingVO vo, HttpSession session, String startdate, String startclock,String enddate, String endclock,
			String phone1, String phone2, String phone3, String email1, String email2){
		String sid = ((userVO) session.getAttribute("login")).getClient_id();
		MatchingDAO  dao = sqlSession.getMapper(MatchingDAO.class);
		TeamCreateDAO tdao = sqlSession.getMapper(TeamCreateDAO.class);
		TeamVO tvo = tdao.execTeamid(sid);
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
		vo.setTeam_id(tvo.getTeam_id());
		dao.execInsert(vo);
		return "redirect:/gBoard/gameList";   
	}
	
	
	@RequestMapping(value = "/place", method = RequestMethod.GET)
	public void place(Model model) throws Exception {
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
	
	@RequestMapping("/selectPlace")
	public ModelAndView selectPlace(){
		
		ModelAndView mv = new ModelAndView();
		PlaceDAO dao = sqlSession.getMapper(PlaceDAO.class);
		ArrayList<PlaceVO> list = dao.execSelect();
			
			mv.addObject("list", list);	
			mv.setViewName("/gBoard/selectPlace");
			return mv;
			
	}
	
	@RequestMapping("/place_content")
	public ModelAndView place_content(String no, String rno){
		ModelAndView mv = new ModelAndView();
		PlaceDAO dao = sqlSession.getMapper(PlaceDAO.class);
		PlaceVO vo = dao.execContent(no);
		//ArrayList<String> imgList = vo.getPfnameList();
				
		//mv.addObject("imgList",imgList);
		mv.addObject("vo", vo);	
		mv.addObject("rno", rno);
		mv.setViewName("/gBoard/place_content");
		
		return mv;
	}
	
	@RequestMapping("/place_content_detail")
	@ResponseBody
	public JSONArray place_content_detail(String no){
		JSONArray place_detail = new JSONArray();
		PlaceDAO dao = sqlSession.getMapper(PlaceDAO.class);
		PlaceVO vo = dao.execContent(no);
		System.out.println("no:"+no);
		System.out.println(vo.getTitle());
		System.out.println(vo.getPhone());
		System.out.println(vo.getContent());
		System.out.println(vo.getPfname());
		
		JSONObject obj = new JSONObject();
		obj.put("title", vo.getTitle());
		obj.put("phone", vo.getPhone());
		obj.put("content", vo.getContent());
		obj.put("pfname", vo.getPfname());
		
		place_detail.add(obj);
		
		return place_detail;
	}

	@RequestMapping("/gameInfo")
	public ModelAndView board_content(int team_id, String client_id, int gameno) {
		ModelAndView mv = new ModelAndView();
		TeamDAO dao = sqlSession.getMapper(TeamDAO.class);
		// formation dao
		FormationDAO fdao = sqlSession.getMapper(FormationDAO.class);

		TeamVO vo = dao.execContent(team_id);
		GameBoardVO gvo = dao.execGameInfo(client_id, gameno);

		if (vo.getTeam_formation().equals("433")) {
			System.out.println("433 selected");

			Formation_433VO fvo = fdao.execSelectFormation_433(team_id);
			mv.addObject("fvo", fvo);

		} else if (vo.getTeam_formation().equals("4231")) {
			System.out.println("4231 selected");

			Formation_4231VO fvo = fdao.execSelectFormation_4231(team_id);
			mv.addObject("fvo", fvo);
		} else if (vo.getTeam_formation().equals("41212")) {
			System.out.println("41212 selected");

			Formation_41212VO fvo = fdao.execSelectFormation_41212(team_id);
			mv.addObject("fvo", fvo);
		}

		// get team position by team_id

		// get team players
		mv.addObject("vo", vo);
		mv.addObject("gvo", gvo);
		mv.setViewName("/gBoard/gameInfo");

		return mv;
	}
	
	
}
