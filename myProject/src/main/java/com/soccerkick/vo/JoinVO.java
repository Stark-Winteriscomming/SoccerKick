package com.soccerkick.vo;

import java.util.Random;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class JoinVO {
	private String client_id, fname, client_profile_name,position_id,client_region,client_age,client_history;
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

	public String getClient_profile_name() {
		return client_profile_name;
	}

	public void setClient_profile_name(String client_profile_name) {
		this.client_profile_name = client_profile_name;
	}

	public String getPosition_id() {
		return position_id;
	}

	public void setPosition_id(String position_id) {
		this.position_id = position_id;
	}

	public String getClient_region() {
		return client_region;
	}

	public void setClient_region(String client_region) {
		this.client_region = client_region;
	}

	public String getClient_age() {
		return client_age;
	}

	public void setClient_age(String client_age) {
		this.client_age = client_age;
	}

	public String getClient_history() {
		return client_history;
	}

	public void setClient_history(String client_history) {
		this.client_history = client_history;
	}
	
	
}
