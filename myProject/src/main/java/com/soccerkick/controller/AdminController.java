package com.soccerkick.controller;

import java.io.FileOutputStream;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;













import com.soccerkick.dao.*;
import com.soccerkick.vo.*;


@Controller
@RequestMapping("/admin/*")
public class AdminController {
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@RequestMapping("/admin")
    public String admin(){
		
		return "/admin/admin_login";
	}
	
	@RequestMapping(value="/admin_login.do", method=RequestMethod.POST)
	public String admin_login(AdminVO vo){
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		String result ="";
		
		if("admin".equals(vo.getClient_id())&&
				"1234".equals(vo.getPw())){
				
			    int val = dao.execSelect(vo);
			    
			    
			    if(val ==1){
			    	
			result ="/admin/admin_index";
			    }
			    
			    }else{
					//로그인 실패
				}
		return result;
		//로그인 처리
		
		
	}
	
	
	@RequestMapping("/admin_index")
	public String admin_index(){
		return "/admin/admin_index";
	}
	
	
	@RequestMapping("/admin_member_list")
	public ModelAndView  admin_member_list(){
		ModelAndView mv = new ModelAndView();
		AdminDAO dao = sqlSession.getMapper(AdminDAO.class);
		
		ArrayList<AdminVO> list = dao.execSelectt();
		
		mv.addObject("list", list);
		mv.setViewName("/admin/admin_member_list");
		
		return mv;
	}
	@RequestMapping("/admin_place_form")
	public String admin_place_form(){
		return "/admin/admin_place_form";
	}
	
	@RequestMapping(value="/admin_place_save.do", method=RequestMethod.POST)
	public String admin_place_save(PlaceVO vo, HttpServletRequest request) throws Exception{
		PlaceDAO dao = sqlSession.getMapper(PlaceDAO.class);
		
		//1. vo에 있는 fileList만큼 반복하여 upload 폴더에 저장시킨다.
				String path = request.getSession().getServletContext().getRealPath("/resources/ground");					
				String fpath = path + "\\" + vo.getPfname();
				System.out.println("fpath:" +fpath);	
				FileOutputStream fos = new FileOutputStream(fpath);
				CommonsMultipartFile file=vo.getFile();
				fos.write(file.getBytes());
				fos.close();				
				System.out.println(vo.getTitle());
				System.out.println(vo.getPhone());
				System.out.println(vo.getIntro());
				System.out.println(vo.getContent());
				
		int result = dao.execInsert(vo);
		return "redirect:/admin/admin_index";
	}

	@RequestMapping("/admin_place_list")
	public ModelAndView  admin_place_list(){
		ModelAndView mv = new ModelAndView();
		PlaceDAO dao = sqlSession.getMapper(PlaceDAO.class);
		
		ArrayList<PlaceVO> list = dao.execSelect();
		
		
		
		mv.addObject("list", list);
		mv.setViewName("/admin/admin_place_list");
		
		return mv;
	}
	@RequestMapping("/admin_place_content")
	public ModelAndView admin_place_content(String no, String rno){
		ModelAndView mv = new ModelAndView();
		PlaceDAO dao = sqlSession.getMapper(PlaceDAO.class);
		PlaceVO vo = dao.execContent(no);
		//ArrayList<String> imgList = vo.getPfnameList();
				
		//mv.addObject("imgList",imgList);
		mv.addObject("vo", vo);	
		mv.addObject("rno", rno);
		mv.setViewName("/admin/admin_place_content");
		
		return mv;
	}
	@RequestMapping("/admin_place_delete")
	public ModelAndView admin_place_delete(String no){
		ModelAndView mv =new ModelAndView();

		mv.addObject("no", no);
		mv.setViewName("/admin/admin_place_delete");
		
		return mv;
	}
	
	
	@RequestMapping("/admin_place_delete_complete")
	public String admin_place_delete_complete(String no){
		PlaceDAO dao = sqlSession.getMapper(PlaceDAO.class);
		dao.execDelete(no);
		
		
		return "redirect:/admin/admin_place_list";
	}
	
	@RequestMapping("/admin_place_update_form")
	public ModelAndView admin_place_update_form(String no){
		ModelAndView mv = new ModelAndView();
		PlaceDAO dao = sqlSession.getMapper(PlaceDAO.class);
		PlaceVO vo = dao.execContent(no);
		
		
		mv.addObject("vo", vo);
		mv.setViewName("/admin/admin_place_update_form");
		
		return mv;
	}
	
	@RequestMapping(value="/admin_place_update_save.do", method=RequestMethod.POST)
	public String admin_place_update_save(PlaceVO vo){
		
		PlaceDAO dao = sqlSession.getMapper(PlaceDAO.class);
		dao.execUpdate(vo);
		
	
		return "redirect:/admin/admin_place_list";
	}
	
	
	
	/*
	
	@RequestMapping("/admin_notice_form.do")
	public String admin_notice_form(){
		return "/admin/admin_notice_form.jsp";
	}
	
	
	
	@RequestMapping(value="/admin_notice_save.do", method=RequestMethod.POST)
	public String admin_notice_save(NoticeVO vo){
		NoticeDAO dao = sqlSession.getMapper(NoticeDAO.class);
		dao.execInsert(vo);
		
		return "redirect:/admin_notice_list.do";
	}
	
	
	@RequestMapping("/admin_notice_content.do")
	public ModelAndView notice_content(String no){
		ModelAndView mv = new ModelAndView();
		NoticeDAO dao = sqlSession.getMapper(NoticeDAO.class);
		NoticeVO vo = dao.execContent(no);
		dao.execHitsUpdate(no);
		
		mv.addObject("vo", vo);
		mv.setViewName("/admin/admin_notice_content.jsp");
		
		return mv;
	}
	
	
	@RequestMapping("/admin_notice_update.do")
	public ModelAndView admin_notice_update(String no){
		ModelAndView mv = new ModelAndView();
		NoticeDAO dao = sqlSession.getMapper(NoticeDAO.class);
		NoticeVO vo = dao.execContent(no);
		
		
		mv.addObject("vo", vo);
		mv.setViewName("/admin/admin_notice_update.jsp");
		
		return mv;
	}
	
	@RequestMapping(value="/admin_notice_update_save.do", method=RequestMethod.POST)
	public String admin_notice_update_save(NoticeVO vo){
		
		NoticeDAO dao = sqlSession.getMapper(NoticeDAO.class);
		dao.execUpdate(vo);
	
		return "redirect:/admin_notice_list.do";
	}
	
	
	@RequestMapping("/admin_notice_delete.do")
	public ModelAndView admin_notice_delete(String no){
		ModelAndView mv =new ModelAndView();

		mv.addObject("no", no);
		mv.setViewName("/admin/admin_notice_delete.jsp");
		
		return mv;
	}
	
	
	@RequestMapping("/admin_notice_delete_complete.do")
	public String admin_notice_delete_complete(String no){
		NoticeDAO dao = sqlSession.getMapper(NoticeDAO.class);
		dao.execDelete(no);
		
		
		return "redirect:/admin_notice_list.do";
	} */

}
