package com.soccerkick.controller;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.soccerkick.dao.ChatRoomDAO;
import com.soccerkick.dao.NoteDAO;
import com.soccerkick.vo.ChatRoomVO;
import com.soccerkick.vo.NoteGroupVO;
import com.soccerkick.vo.NoteVO;

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
	public ModelAndView chatRoom(@PathVariable("cno") String cno, String title) throws Exception {
		
		ModelAndView mv = new ModelAndView();
		System.out.println("t: "+title);
		mv.addObject("cno", cno);
		mv.addObject("title", title);
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
	// ÂÊÁö
	@RequestMapping(value = "/notes", method = RequestMethod.GET)
	public ModelAndView notes(String user_id) throws Exception{
		System.out.println("userid: "+user_id);
		NoteDAO dao = sqlSession.getMapper(NoteDAO.class);
		ModelAndView mv = new ModelAndView();
		ArrayList<NoteGroupVO> list = dao.execSelectNoteGroup(user_id);
		mv.addObject("list", list);
		System.out.println("g id");
		for(NoteGroupVO vo : list){
			System.out.println(vo.getGroup_id());
		}
		mv.setViewName("/myPage/noteList");
		return mv;
	}
	
	@RequestMapping(value = "/note/content", method = RequestMethod.GET)
	public ModelAndView noteContent(int groupId) throws Exception{
		System.out.println("group id: "+groupId);
		NoteDAO dao = sqlSession.getMapper(NoteDAO.class);
		ModelAndView mv = new ModelAndView();
		ArrayList<NoteVO> list = dao.execSelectNote(groupId);
		mv.addObject("list", list);
		mv.setViewName("/myPage/noteContent");
		return mv;
	}
}
