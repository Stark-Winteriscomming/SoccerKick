package com.soccerkick.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.ChatRoomVO;

public interface ChatRoomDAO {
	public int execPageCount(@Param("searchText")String searchText);
	public ArrayList<ChatRoomVO> execSelect(@Param("startCount") int startCount, @Param("endCount") int endCount, @Param("searchText") String searchText);
	public void execInsert(String title);
	
}
