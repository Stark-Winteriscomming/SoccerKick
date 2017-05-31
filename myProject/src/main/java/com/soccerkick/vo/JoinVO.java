package com.soccerkick.vo;

import java.util.Random;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class JoinVO {
	private String client_id, fname;
	private String client_name;
	private String client_phone;
	private Integer pw;
	CommonsMultipartFile file;
	
  
	
	
	


	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public CommonsMultipartFile getFile() {
		return file;
	}

	public void setFile(CommonsMultipartFile file) {
		this.file = file;
	}

	public String getClient_id() {
		return client_id;
	}

	public void setClient_id(String client_id) {
		this.client_id = client_id;
	}

	public String getClient_name() {
		return client_name;
	}

	public void setClient_name(String client_name) {
		this.client_name = client_name;
	}

	public String getClient_phone() {
		return client_phone;
	}

	public void setClient_phone(String client_phone) {
		this.client_phone = client_phone;
	}

	public Integer getPw() {
		return pw;
	}

	public void setPw(Integer pw) {
		this.pw = pw;
	}

}
