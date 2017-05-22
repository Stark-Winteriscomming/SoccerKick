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

import com.soccerkick.dao.GboardDAO;
import com.soccerkick.dao.TeamCreateDAO;
import com.soccerkick.vo.TeamVO;
import com.soccerkick.vo.userVO;

@Controller
@RequestMapping("/team/*")
public class teamController {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@RequestMapping("/teamCreateForm")
	public String teamCreateForm(HttpSession session){
		
		if(session.getAttribute("login") == null){
			return "/user/login";
		}
		else{
			return "/team/teamCreateForm";
		}
		
	}
	
	@RequestMapping(value = "/teamView", method = RequestMethod.GET)
	public ModelAndView home(Model model) {
		
		ModelAndView mv = new ModelAndView();
		GboardDAO dao = sqlSession.getMapper(GboardDAO.class);
		
		ArrayList<TeamVO> list = dao.execSelect();
		mv.addObject("list", list);
		mv.setViewName("/team/teamViewList");	 
		
		return mv;
	}
	
	@RequestMapping(value="/teamCreateForm_check" , method = RequestMethod.POST)
	public String teamCreateForm(TeamVO vo, HttpServletRequest request, HttpSession session) throws IOException{		
		ModelAndView mv = new ModelAndView();
		String sid = ((userVO)session.getAttribute("login")).getClient_id();
		vo.setClient_id(sid);
		String fname = vo.getUploadfile().getOriginalFilename();
		if(fname.equals("")){
			vo.setTeam_logo_file_name(fname);
		}
		else{
			String path = request.getSession().getServletContext().getRealPath("/upload");
<<<<<<< HEAD
			System.out.println(path);  
=======
			System.out.println(path);
>>>>>>> b5c7e1d6fa708655faee0e1ef9a622a0c23c2077
			String[] flist = new File(path).list();
			for (int i = 0; i < flist.length; i++) {
				System.out.println("ddd:"+flist[i]);
				if (fname.equals(flist[i])) {
					System.out.println("�������� ����");
					int index = fname.lastIndexOf(".");
					String tmpext = fname.substring(index);
					String tmpname = fname.substring(0, index);
					fname = tmpname + "_" + i + tmpext;
					vo.setTeam_logo_file_name(fname);
					i = flist.length;
				}
				else{
					vo.setTeam_logo_file_name(fname);
					System.out.println("�������� ����");
					i = flist.length;
				}
			}
			String fpath = path + "\\" +  fname;
			System.out.println(fpath);
			FileOutputStream fos = new FileOutputStream(fpath);
			fos.write(vo.getUploadfile().getBytes());
			fos.close();
			System.out.println("fname : " + vo.getTeam_logo_file_name());
		}
		TeamCreateDAO dao = sqlSession.getMapper(TeamCreateDAO.class);
		int result = dao.execInsert(vo);
		
		if(result != 0){  
			mv.setViewName("home");
		}
		return "redirect:/";
	}
/*	TeamCreateDAO dao = sqlSession.getMapper(TeamCreateDAO.class);
	int result = dao.execInsert(vo);*/
}
