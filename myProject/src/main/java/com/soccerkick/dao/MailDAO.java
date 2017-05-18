package com.soccerkick.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.MailVO;

public interface MailDAO {
	public ArrayList<MailVO> execSelectAll(String recv_id);
	public MailVO execSelect(int mail_no);
	public int getCount(@Param("id") String id);
	public void execInsert(MailVO vo);
	public void updateRead(int mail_no);
	
}
