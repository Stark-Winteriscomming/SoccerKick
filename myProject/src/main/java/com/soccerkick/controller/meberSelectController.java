package com.soccerkick.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.soccerkick.dao.FormationDAO;
import com.soccerkick.dao.MemberSelectDAO;
import com.soccerkick.dao.TeamCreateDAO;
import com.soccerkick.dao.TeamDAO;
import com.soccerkick.vo.Formation_433VO;
import com.soccerkick.vo.MemberSelectVO;
import com.soccerkick.vo.TeamVO;
import com.soccerkick.vo.userVO;

@Controller
@RequestMapping("/myPage/*")
public class meberSelectController {
	@Autowired
	SqlSessionTemplate sqlSession;

	@RequestMapping("/memberSelectForm")
	public ModelAndView memberSelectForm(HttpSession session, String no) {
		String sid = ((userVO) session.getAttribute("login")).getClient_id();
		System.out.println("sid:" + sid);
  
		ModelAndView mv = new ModelAndView();
		if (sid == null) {
			mv.setViewName("/user/login");
		} else {
			mv.setViewName("/myPage/memberSelectForm");
			TeamCreateDAO dao = sqlSession.getMapper(TeamCreateDAO.class);
			MemberSelectDAO mdao = sqlSession.getMapper(MemberSelectDAO.class);
			TeamVO vo = dao.execFormation(sid);
			TeamVO tvo = dao.execTeamid(sid);
			ArrayList<MemberSelectVO> list = mdao.execSelectt(tvo.getTeam_id());
			mv.addObject("vo", vo);
			mv.addObject("list", list);
			mv.addObject("tvo", tvo);

		}
		return mv;
	}

	
	
	@RequestMapping("/memberSelectPopup")
	public ModelAndView memberSelectPopup(String team_id, String position) {
		ModelAndView mv = new ModelAndView();
		System.out.println("11111:" + position);
		MemberSelectDAO dao = sqlSession.getMapper(MemberSelectDAO.class);
		ArrayList<MemberSelectVO> list = dao.execSelect(team_id, position);
		mv.addObject("list", list);
		mv.setViewName("/myPage/memberSelectPopup");
		return mv;
	}

	@RequestMapping(value = "/memberSelect_save.do", method = RequestMethod.POST)
	public String memberSelect_save(String no, HttpSession session)
			throws IOException {
		String sid = ((userVO) session.getAttribute("login")).getClient_id();
		MemberSelectDAO dao = sqlSession.getMapper(MemberSelectDAO.class);

		dao.execInsert(no);
		TeamVO vo = dao.execFormation(sid);
//		ArrayList<MemberSelectVO> list = dao.execSelectt(no);

		System.out.println("save..");
		return "redirect:/myPage/memberSelectForm";
	}

	// 최종
	@RequestMapping(value = "/complete_team", method = RequestMethod.POST)
	@ResponseBody
	public String complete_team(@RequestBody String msg, HttpSession session) throws ParseException {
		String sid = ((userVO) session.getAttribute("login")).getClient_id();
		FormationDAO dao = sqlSession.getMapper(FormationDAO.class);
		MemberSelectDAO mdao = sqlSession.getMapper(MemberSelectDAO.class);
		TeamDAO tdao = sqlSession.getMapper(TeamDAO.class);
		
		TeamVO vo = mdao.execFormation(sid);
		int mcount = mdao.execCount(vo.getTeam_id(), vo.getTeam_formation());
		tdao.execUpdate(mcount, vo.getTeam_id());
		int tcount = tdao.execCount(vo.getTeam_id());
		System.out.println("result:"+mcount);
		System.out.println("result2:"+tcount);
		System.out.println("received data: " + msg);

		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObj = (JSONObject) jsonParser.parse(msg);

		JSONArray jsonArray = (JSONArray) jsonObj.get("client");
		
//		Formation_433VO vo = new Formation_433VO();  
		for (int i = 0; i < jsonArray.size(); i++) {
			JSONObject obj = (JSONObject) jsonArray.get(i);
			String client_id = (String)obj.get("id");
			String position = (String)obj.get("position");
			int team_id	= Integer.parseInt((String)obj.get("tid"));
			String formation = (String)obj.get("formation");
		
			dao.execUpdate(formation, team_id, position, client_id);
		}
		
		return "successed";
	}

	@RequestMapping("/delete_member")
	public String delete_member(String no, String position) {
		System.out.println("no:" + no);
		System.out.println("position:" + position);
		MemberSelectDAO dao = sqlSession.getMapper(MemberSelectDAO.class);
		dao.execDelete(no);
		return "redirect:/myPage/memberSelectForm";
	}
}
