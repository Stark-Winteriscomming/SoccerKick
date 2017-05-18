package com.soccerkick.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class TeamVO {
	String team_name, team_region, team_logo_file_name, team_history, team_formation;
	String  client_id = "test";
	int team_member_count,team_point, team_id;
	CommonsMultipartFile uploadfile;
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	public String getTeam_region() {
		return team_region;
	}
	public void setTeam_region(String team_region) {
		this.team_region = team_region;
	}
	public String getTeam_logo_file_name() {
		return team_logo_file_name;
	}
	public void setTeam_logo_file_name(String team_logo_file_name) {
		this.team_logo_file_name = team_logo_file_name;
	}
	public String getTeam_history() {
		return team_history;
	}
	public void setTeam_history(String team_history) {
		this.team_history = team_history;
	}
	public String getTeam_formation() {
		return team_formation;
	}
	public void setTeam_formation(String team_formation) {
		this.team_formation = team_formation;
	}
	public String getClient_id() {
		return client_id;
	}
	public void setClient_id(String client_id) {
		this.client_id = client_id;
	}
	public int getTeam_member_count() {
		return team_member_count;
	}
	public void setTeam_member_count(int team_member_count) {
		this.team_member_count = team_member_count;
	}
	public int getTeam_point() {
		return team_point;
	}
	public void setTeam_point(int team_point) {
		this.team_point = team_point;
	}
	public CommonsMultipartFile getUploadfile() {
		return uploadfile;
	}
	public void setUploadfile(CommonsMultipartFile uploadfile) {
		this.uploadfile = uploadfile;
	}
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}

}
