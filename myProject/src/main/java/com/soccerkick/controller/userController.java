package com.soccerkick.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Random;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.soccerkick.dao.GboardDAO;
import com.soccerkick.dao.JoinDAO;
import com.soccerkick.dao.userDAO;
import com.soccerkick.vo.JoinVO;
import com.soccerkick.vo.userVO;

@Controller
@RequestMapping("/user/*")
public class userController {

	@Inject
	private userDAO dao;

	@Autowired
	SqlSessionTemplate sqlSession;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		String repath="";
		if (session.getAttribute("login") != null) {

			return "redirect:/";
		} else{
			repath= "/user/login";
		}
		return repath;
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {

		session.invalidate();
		return "redirect:/";
	}


	@RequestMapping(value = "/loginCheck", method = RequestMethod.POST)
	public String loginCheck(Model model, userVO vo, RedirectAttributes rttr, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws Exception {

		//HttpSession session = request.getSession();
		String repath="";
		int result = dao.userCheck(vo);

		if (result == 1) {
			session.setAttribute("login", vo);
			session.setAttribute("sid", vo.getClient_id());
			String referer = request.getHeader("Referer");

			System.out.println("referer:"+referer);
			repath = "redirect:" + referer;
		} else
		{
			repath = "redirect:/user/login";
		} 
		return repath;

	}

	@RequestMapping(value = "/join_form", method = RequestMethod.GET)
	public void joinForm(Model model) throws Exception {
	}  

	@RequestMapping(value = "/join.do", method = RequestMethod.POST)
	public String joinProcess(JoinVO vo, HttpServletRequest request) throws IOException { 
		// 2. �뙆�씪�쓽 �씠由� 媛��졇�삤湲�
		String fname = vo.getFile().getOriginalFilename();

		if (fname.equals("")) {
//			vo.setTeam_logo_file_name(fname);
			vo.setFname("null");
		}else {
			String path = request.getSession().getServletContext().getRealPath("/upload");
			System.out.println("path:"+path); 
				if (fname.equals(fname)) {
					int index = fname.lastIndexOf(".");
					String tmpext = fname.substring(index);
					String tmpname = fname.substring(0, index);
					fname = tmpname + "_" + new Random().nextInt(100000000) + tmpext;
					vo.setFname(fname);
				} else {
					System.out.println("�룞�씪�뙆�씪�뾾�쓬");
					vo.setFname(fname);
				}
			
			String fpath = path + "\\" + fname;
			System.out.println("fpath:"+fpath);
			FileOutputStream fos = new FileOutputStream(fpath);
			fos.write(vo.getFile().getBytes());
			fos.close();
			System.out.println("fname : " + vo.getFname());
		}
		String resPage = "";
		JoinDAO dao = sqlSession.getMapper(JoinDAO.class);
		int result = dao.execInsert(vo);

		if (result == 1) {
			resPage = "/user/login";
		} else {
			resPage = "/ueser/login";
		}

		return resPage;
		
		/*if (fname.equals()) {
		System.out.println("�룞�씪�뙆�씪 �엳�쓬");
		String fno = String.valueOf(new Random().nextInt(1000));
		int index = fname.lastIndexOf(".");
		String tmpext = fname.substring(index);// �솗�옣�옄 遺꾨━���옣
		String tmpname = fname.substring(0, index);// �뙆�씪紐� 遺꾨━���옣
		fname = tmpname + "_" + fno + tmpext; // �깉濡쒖슫 �뙆�씪紐� �깮�꽦
		System.out.println("tmpname = " + tmpname);
		vo.setFname(fname);
		i = flist.length;
	} else {
		vo.setFname(fname);
		System.out.println("�룞�씪�뙆�씪 �뾾�쓬");
		i = flist.length;
	}*/

	}
	@RequestMapping(value="/getClient", method=RequestMethod.GET)
	@ResponseBody
	public String getClient(String id) throws Exception{
		userVO vo = new userVO();
		System.out.println("id : " + id);
		userVO resultVO = (userVO)dao.getClient(id);
		
		System.out.println("name: " + resultVO.getClient_name());
		Gson gson = new Gson();
		String jsonString = gson.toJson(resultVO);
		return jsonString;
		
	}

}
