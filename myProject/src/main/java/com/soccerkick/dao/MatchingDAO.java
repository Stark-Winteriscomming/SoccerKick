package com.soccerkick.dao;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.MatchingVO;

public interface MatchingDAO {
	
	public int execInsert(MatchingVO vo);
}
