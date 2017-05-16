package com.soccerkick.dao;

import java.util.ArrayList;

import com.soccerkick.vo.MailVO;

public interface MailDAO {
	public ArrayList<MailVO> execSelectAll(String recv_id);
	public MailVO execSelect(int mail_no);
	public void execInsert(MailVO vo);
	
}
