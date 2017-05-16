package com.soccerkick.dao;

import java.util.ArrayList;


import com.soccerkick.vo.MemberSelectVO;

public interface MemberSelectDAO {
	
	public ArrayList<MemberSelectVO> execSelect();
	
	public int execInsert(MemberSelectVO vo);
}
