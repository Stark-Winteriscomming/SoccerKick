package com.soccerkick.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class MemberSelectVO {
	int rno, no;
	String apply_name, age, region, a_apy_position, team_id, apply_id;

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

	public String getA_apy_position() {
		return a_apy_position;
	}

	public void setA_apy_position(String a_apy_position) {
		this.a_apy_position = a_apy_position;
	}

	public String getTeam_id() {
		return team_id;
	}

	public void setTeam_id(String team_id) {
		this.team_id = team_id;
	}

	public String getApply_id() {
		return apply_id;
	}

	public void setApply_id(String apply_id) {
		this.apply_id = apply_id;
	}
	

}
