package com.soccerkick.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class MemberSelectVO {
	int rno, no;
	String apply_name, age, region, apply_position;
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
	
	public String getApply_name() {
		return apply_name;
	}
	public void setApply_name(String apply_name) {
		this.apply_name = apply_name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public String getApply_position() {
		return apply_position;
	}
	public void setApply_position(String apply_position) {
		this.apply_position = apply_position;
	}
	
}
