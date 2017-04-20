package com.soccerkick.controller;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.soccerkick.dao.ChatRoomDAO;
import com.soccerkick.vo.ChatRoomVO;

@Controller
@RequestMapping("/myPage/*")
public class myPageController {
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	
	@RequestMapping(value = "/chatRoomList", method = RequestMethod.GET)
	public ModelAndView chatRoomList() throws Exception {
		ChatRoomDAO dao = sqlSession.getMapper(ChatRoomDAO.class);
		ModelAndView mv = new ModelAndView();
		ArrayList<ChatRoomVO> list = dao.execSelect();
		mv.addObject("list", list);
		mv.setViewName("/myPage/chatRoomList");
		System.out.println("called");
		for(ChatRoomVO vo : list){
			System.out.println(""+vo.getCno());
		}
		
		return mv;
	}
	
	@RequestMapping(value = "/memberSelectForm", method = RequestMethod.GET)
	public void memberSelectForm(Model model) throws Exception {
	}
	
	@RequestMapping(value ="/ss", method = RequestMethod.GET )
	public void ss(Model model) throws Exception {
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modify(Model model) throws Exception {
	}
//	/myPage/chat/chatRoom/
	@RequestMapping(value = "/chat/chatRoom/{cno}", method = RequestMethod.GET)
	public ModelAndView chatRoom(@PathVariable("cno") String cno) throws Exception {
		
		ModelAndView mv = new ModelAndView(); 
		mv.addObject("cno", cno);
		mv.setViewName("/myPage/chatRoom");
		return mv;
	}
	@RequestMapping(value = "/chat/form", method = RequestMethod.GET)
	public String chatRoomForm() {
		return "/myPage/chatRoomForm";
	}
	@RequestMapping(value = "/chat/make", method = RequestMethod.POST)
	public String chatRoomMake(ChatRoomVO vo) {
		ChatRoomDAO dao = sqlSession.getMapper(ChatRoomDAO.class);
		dao.execInsert(vo.getTitle());
		return "redirect:/myPage/chatRoomList";
	}
}
