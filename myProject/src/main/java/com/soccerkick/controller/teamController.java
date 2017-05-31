package com.soccerkick.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.soccerkick.dao.FormationDAO;
import com.soccerkick.dao.GameMatchDAO;
import com.soccerkick.dao.TeamCreateDAO;
import com.soccerkick.dao.TeamDAO;
import com.soccerkick.vo.Formation_41212VO;
import com.soccerkick.vo.Formation_4231VO;
import com.soccerkick.vo.Formation_433VO;
import com.soccerkick.vo.GameVO;
import com.soccerkick.vo.TeamVO;
import com.soccerkick.vo.userVO;

@Controller
@RequestMapping("/team/*")
public class teamController {
	@Autowired
	SqlSessionTemplate sqlSession;

	@RequestMapping("/teamCreateForm")
	public String teamCreateForm(HttpSession session) {
		if (session.getAttribute("login") == null) {
			return "/user/login";
		} else {
			return "/team/teamCreateForm";
		}
	}

	@RequestMapping(value = "/teamViewList", method = RequestMethod.GET)
	public ModelAndView home(Model model, String keywordInput) {

		ModelAndView mv = new ModelAndView();
		TeamDAO dao = sqlSession.getMapper(TeamDAO.class);

		ArrayList<TeamVO> list = dao.execSelect(keywordInput);
		mv.addObject("list", list);

		mv.setViewName("/team/teamViewList");

		return mv;
	}

	@RequestMapping("/teamView")
	public ModelAndView board_content(int team_id) {
		ModelAndView mv = new ModelAndView();
		TeamDAO dao = sqlSession.getMapper(TeamDAO.class);
		// formation dao
		FormationDAO fdao = sqlSession.getMapper(FormationDAO.class);

		TeamVO vo = dao.execContent(team_id);

		if (vo.getTeam_formation().equals("433")) {
			System.out.println("433 selected");

			Formation_433VO fvo = fdao.execSelectFormation_433(team_id);
			mv.addObject("fvo", fvo);

		} else if (vo.getTeam_formation().equals("4231")) {
			System.out.println("4231 selected");

			Formation_4231VO fvo = fdao.execSelectFormation_4231(team_id);
			mv.addObject("fvo", fvo);
		}
		else if(vo.getTeam_formation().equals("41212")){
			System.out.println("41212 selected");

			Formation_41212VO fvo = fdao.execSelectFormation_41212(team_id);
			mv.addObject("fvo", fvo);
		}

		// get team position by team_id

		// get team players
		mv.addObject("vo", vo);
		mv.setViewName("/team/teamView");

		return mv;
	}
	
	  
	
	@RequestMapping(value="/gameMatch" , method = RequestMethod.POST)
	public String gameMatch(GameVO vo,RedirectAttributes rttr, HttpSession session){
		TeamDAO dao = sqlSession.getMapper(TeamDAO.class);
		dao.gameMatch(vo);    
		System.out.println("성공");    
		rttr.addFlashAttribute("msg", "SUCCESS"); 
		if (session.getAttribute("login") == null) {
			return "redirect:/";   
		}
		return "redirect:/team/teamViewList";  
	}       

	// create team
	@RequestMapping(value = "/teamCreateForm_check", method = RequestMethod.POST)
	public String teamCreateForm(TeamVO vo, HttpServletRequest request, HttpSession session) throws IOException {
		ModelAndView mv = new ModelAndView();
		String sid = ((userVO) session.getAttribute("login")).getClient_id();
		vo.setClient_id(sid);
		String fname = vo.getUploadfile().getOriginalFilename();
		
		if (fname.equals("")) {
			vo.setTeam_logo_file_name(fname);
		} else {
			String path = request.getSession().getServletContext().getRealPath("/upload");
			/* System.out.println(path); */
			String[] flist = new File(path).list();
			for (int i = 0; i < flist.length; i++) {
				System.out.println("ddd:" + flist[i]);
				if (fname.equals(flist[i])) {
					System.out.println("�룞�씪�뙆�씪�엳�쓬");
					int index = fname.lastIndexOf(".");
					String tmpext = fname.substring(index);
					String tmpname = fname.substring(0, index);
					fname = tmpname + "_" + i + tmpext;
					vo.setTeam_logo_file_name(fname);
					i = flist.length;
				} else {
					vo.setTeam_logo_file_name(fname);
					System.out.println("�룞�씪�뙆�씪 �뾾�쓬");
					i = flist.length;
				}
			}
			String fpath = path + "\\" + fname;
			System.out.println(fpath);
			FileOutputStream fos = new FileOutputStream(fpath);
			fos.write(vo.getUploadfile().getBytes());
			fos.close();
			System.out.println("fname : " + vo.getTeam_logo_file_name());
		}
		TeamCreateDAO dao = sqlSession.getMapper(TeamCreateDAO.class);
		int result = dao.execInsert(vo);
		int seq = dao.getCurrentSeq();
		System.out.println("team id: " + vo.getTeam_id());
		System.out.println("formation: " + vo.getTeam_formation());
		System.out.println("seq: " + seq);
		dao.insertIntoFormation(seq, vo.getTeam_formation());

		if (result != 0) {
			mv.setViewName("home");
		}
		return "redirect:/";
	}
	/*
	 * TeamCreateDAO dao = sqlSession.getMapper(TeamCreateDAO.class); int result
	 * = dao.execInsert(vo);
	 */

}
