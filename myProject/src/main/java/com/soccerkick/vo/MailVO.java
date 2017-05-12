package com.soccerkick.vo;

public class MailVO {
	private int rno, mail_no, is_checked;
	private String send_id, recv_id, title, content, reg_date;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getMail_no() {
		return mail_no;
	}
	public void setMail_no(int mail_no) {
		this.mail_no = mail_no;
	}
	public String getSend_id() {
		return send_id;
	}
	public void setSend_id(String send_id) {
		this.send_id = send_id;
	}
	public String getRecv_id() {
		return recv_id;
	}
	public void setRecv_id(String recv_id) {
		this.recv_id = recv_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public int getIs_checked() {
		return is_checked;
	}
	public void setIs_checked(int is_checked) {
		this.is_checked = is_checked;
	}
}
