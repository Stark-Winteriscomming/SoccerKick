package com.soccerkick.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.soccerkick.dao.GboardDAO;
import com.soccerkick.vo.TeamVO;

@Controller
public class HomeController {

	@Autowired
	SqlSessionTemplate sqlSession;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(Model model, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/index");    
		return mv;  
	}   
	
	@RequestMapping(value = "/enter", method = RequestMethod.GET)
	public ModelAndView home(Model model, HttpSession session) {

		ModelAndView mv = new ModelAndView();
		GboardDAO dao = sqlSession.getMapper(GboardDAO.class);
		if (session.getAttribute("login") == null) {
			System.out.println("session: login is null...");

			// return login page
			mv.setViewName("/user/login");
			return mv;
		}
		ArrayList<TeamVO> list = dao.execSelect();
		mv.addObject("list", list);
		mv.setViewName("/home");

		return mv;
	}

	@RequestMapping("/arraymain.do")
	public String arraymain() {

		return "/array";
	}

	@RequestMapping("/array.do")
	public ModelAndView array(String[] name) {
		for (String str : name) {
			System.out.println(str);
		}
		return null;
	}

	// news api test
	@RequestMapping("/api")
	public String api() {
		return "api";
	}

	@RequestMapping(value="/api/get",produces = "application/json; charset=utf8")
	@ResponseBody
	public String apiGet() {
		String clientId = "33LMl0JgAo0yy9hGL4Zk";// 애플리케이션 클라이언트 아이디값";
		String clientSecret = "21TsOqNdqW";// 애플리케이션 클라이언트 시크릿값";
		try {
			String text = URLEncoder.encode("축구", "UTF-8");
			String display = URLEncoder.encode("15", "UTF-8");
			String apiURL = "https://openapi.naver.com/v1/search/news.json?query=" + text + "&display=" + display;
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection) url.openConnection();
			con.setRequestMethod("GET");
			con.setRequestProperty("X-Naver-Client-Id", clientId);
			con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
			// post request
			String postParams = "source=ko&target=en&text=" + text;
			con.setDoOutput(true);
			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) { // 정상 호출
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else { // 에러 발생
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine;
			StringBuffer response = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				response.append(inputLine);
			}
			br.close();
			System.out.println(response.toString());
			return response.toString();
		} catch (Exception e) {
			System.out.println(e);
			return "fail";
		}
	}
}
