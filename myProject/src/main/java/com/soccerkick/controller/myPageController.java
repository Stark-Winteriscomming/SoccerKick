package com.soccerkick.controller;

import java.util.ArrayList;
import java.util.StringTokenizer;

import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.soccerkick.dao.AddressBookDAO;
import com.soccerkick.dao.ChatRoomDAO;
import com.soccerkick.dao.MailDAO;
import com.soccerkick.vo.ChatRoomVO;
import com.soccerkick.vo.MailVO;
import com.soccerkick.vo.userVO;

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

	@RequestMapping(value = "/ss", method = RequestMethod.GET)
	public void ss(Model model) throws Exception {
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modify(Model model) throws Exception {
	}

	// /myPage/chat/chatRoom/
	@RequestMapping(value = "/chat/chatRoom/{cno}", method = RequestMethod.GET)
	public ModelAndView chatRoom(@PathVariable("cno") String cno, String title) throws Exception {

		ModelAndView mv = new ModelAndView();
		System.out.println("t: " + title);
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
	
	// 메일 리스트
	@RequestMapping(value = "/mails", method = RequestMethod.GET)
	public ModelAndView mails(String user_id, HttpSession session) throws Exception {
		System.out.println("userid: " + user_id);
		MailDAO dao = sqlSession.getMapper(MailDAO.class);
		ModelAndView mv = new ModelAndView();
		ArrayList<MailVO> list = dao.execSelectAll(user_id);
		mv.addObject("list", list);
		mv.setViewName("/myPage/mail/mailList");
		return mv;
	}
	
	// 메일 컨텐츠
	@RequestMapping(value = "/mail/content/{mail_no}", method = RequestMethod.GET)
	public ModelAndView mailContent(@PathVariable("mail_no") int mail_no) throws Exception {
		MailDAO dao = sqlSession.getMapper(MailDAO.class);
		MailVO vo = dao.execSelect(mail_no);
		ModelAndView mv = new ModelAndView();
		mv.addObject("vo", vo);
		mv.setViewName("/myPage/mail/mailContent");
		return mv;
	}

	// 메일 작성 폼
	@RequestMapping(value = "/mail/form", method = RequestMethod.GET)
	public String mailForm(){
		return "/myPage/mail/mailForm";
	}

	// 메일 작성
	@RequestMapping(value = "/mail/write", method = RequestMethod.POST)
	public ModelAndView mailWrite(MailVO vo, HttpSession session) {		
		String send_id = "";
		ModelAndView mv = new ModelAndView();
		if(session.getAttribute("login") == null){
			System.out.println("session login == null ...");
			// return login page
			mv.setViewName("/myPage/mail/sendFailed");
			return mv;
		}
		else{
			String recv_id;
			ArrayList<String> recv_idList = new ArrayList<>();
			AddressBookDAO abDao = sqlSession.getMapper(AddressBookDAO.class);
			send_id = ((userVO)(session.getAttribute("login"))).getClient_id();
			vo.setSend_id(send_id);
			MailDAO dao = sqlSession.getMapper(MailDAO.class);
			try {
				StringTokenizer st = new StringTokenizer(vo.getRecv_id(), ",");
				System.out.println("recv_id is matched?");
				while(st.hasMoreTokens()) { 
					recv_id = st.nextToken();
					vo.setRecv_id(recv_id);
					dao.execInsert(vo);
					System.out.println(abDao.isMatched(recv_id));
					recv_idList.add(recv_id);
				}
				// 메일 보낸 아이디 리스트 
				mv.addObject("list", recv_idList);
				mv.setViewName("/myPage/mail/sendSuccessed");
			} catch (Exception e) {
				// TODO: handle exception
				System.out.println("db insert error");
				e.printStackTrace();
				mv.setViewName("/myPage/mail/sendFailed");
			}
			return mv;
		}
			
	}
	//주소록 등록
	@RequestMapping(value = "/mail/regAddressList", method = RequestMethod.POST)
	@ResponseBody
	public void regAddressList(@RequestBody String msg) {
		System.out.println("client data: " + msg);
	}
	// 주소록
	@RequestMapping(value = "/mail/addressBook", method = RequestMethod.GET)
	public String addressBook(MailVO vo, HttpSession session) {
		return "/myPage/mail/addressBook";
	}
}
