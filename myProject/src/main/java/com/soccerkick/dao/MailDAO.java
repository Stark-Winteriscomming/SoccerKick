package com.soccerkick.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.MailVO;

public interface MailDAO {
	public ArrayList<MailVO> execSelectAll(@Param("startCount") int startCount, @Param("endCount") int endCount, @Param("recv_id")String recv_id);
	public MailVO execSelect(int mail_no);
	public int getCount(@Param("id") String id);
	public int execPageCount(@Param("id") String id);
	public void execInsert(MailVO vo);
	public void updateRead(int mail_no);
	
}
