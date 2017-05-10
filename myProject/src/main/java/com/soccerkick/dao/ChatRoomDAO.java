package com.soccerkick.dao;

import java.util.ArrayList;

import com.soccerkick.vo.ChatRoomVO;

public interface ChatRoomDAO {
	public ArrayList<ChatRoomVO> execSelect();
	public void execInsert(String title);
}
