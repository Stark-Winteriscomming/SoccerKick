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
		System.out.println("매핑 완료");  
		// 1. 경로에서 파일리스트 가져오기
		String path = request.getSession().getServletContext().getRealPath("/upload");
		String[] flist = new File(path).list();

		// 2. 파일의 이름 가져오기
		String fname = vo.getFile().getOriginalFilename();

		// 3. 파일리스트에서 해당 파일의 이름을 중복체크
		for (int i = 0; i < flist.length; i++) {

			if (fname.equals(flist[i])) {
				System.out.println("동일파일 있음");
				String fno = String.valueOf(new Random().nextInt(1000));
				int index = fname.lastIndexOf(".");
				String tmpext = fname.substring(index);// 확장자 분리저장
				String tmpname = fname.substring(0, index);// 파일명 분리저장
				fname = tmpname + "_" + fno + tmpext; // 새로운 파일명 생성
				System.out.println("tmpname = " + tmpname);
				vo.setFname(fname);
				i = flist.length;
			} else {
				vo.setFname(fname);
				System.out.println("동일파일 없음");
				i = flist.length;
			}
		}

		// 4. DB에 저장되는 이름을 결정 vo.setFname(중복체크된 이름 넣기)
		String fpath = path + "\\" + fname;
		System.out.println("fpath=" + fpath);

		// 5. FOS를 이용하여 파일 저장하기
		FileOutputStream fos = new FileOutputStream(fpath);
		fos.write(vo.getFile().getBytes());
		fos.close();

		System.out.println("파일명 : " + vo.getFname());
		String resPage = "";
		JoinDAO dao = sqlSession.getMapper(JoinDAO.class);

		int result = dao.execInsert(vo);

		if (result == 1) {
			resPage = "/user/login";
		} else {
			resPage = "/ueser/login";
		}

		return resPage;

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
