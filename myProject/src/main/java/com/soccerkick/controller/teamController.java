package com.soccerkick.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.soccerkick.dao.TeamCreateDAO;
import com.soccerkick.vo.TeamVO;

@Controller
@RequestMapping("/team/*")
public class teamController {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@RequestMapping("/teamCreateForm")
	public String teamCreateForm(){
		return "/team/teamCreateForm";
	}
	
	@RequestMapping(value="/teamCreateForm_check" , method = RequestMethod.POST)
	public ModelAndView teamCreateForm(TeamVO vo, HttpServletRequest request) throws IOException{		
		ModelAndView mv = new ModelAndView();
		String fname = vo.getUploadfile().getOriginalFilename();
		if(fname.equals("")){
			vo.setTeam_logo_file_name(fname);
		}
		else{
			String path = request.getSession().getServletContext().getRealPath("/upload");
			String[] flist = new File(path).list();
			for (int i = 0; i < flist.length; i++) {
				if (fname.equals(flist[i])) {
					System.out.println("동일파일 있음");
					int index = fname.lastIndexOf(".");
					String tmpext = fname.substring(index);
					String tmpname = fname.substring(0, index);
					fname = tmpname + "_" + i + tmpext;
					vo.setTeam_logo_file_name(fname);
					i = flist.length;
				}
				else{
					vo.setTeam_logo_file_name(fname);
					System.out.println("동일파일 없음");
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
		return mv;
	}
/*	TeamCreateDAO dao = sqlSession.getMapper(TeamCreateDAO.class);
	int result = dao.execInsert(vo);*/
}
