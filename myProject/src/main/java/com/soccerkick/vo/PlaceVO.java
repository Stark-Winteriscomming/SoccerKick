package com.soccerkick.vo;

import java.util.ArrayList;
import java.util.Random;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class PlaceVO {
	int  rno, no;
	String title, content, intro, phone, fname, pfname ;
	CommonsMultipartFile file;
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getPfname() {
		return pfname;
	}
	public void setPfname(String pfname) {
		this.pfname = pfname;
	}
	public CommonsMultipartFile getFile() {
		return file;
	}
	public void setFile(CommonsMultipartFile file) {		
		if(!file.getOriginalFilename().equals("")){			
			String filename = file.getOriginalFilename();
			int index = filename.lastIndexOf(".");	
			String tmpext = filename.substring(index);		
		
			this.file = file;		
			setFname(file.getOriginalFilename());
			setPfname(new Random().nextInt(100000000)+tmpext);		
		}else{
			setFname("");
			setPfname("");		
		}
	}

	
}
