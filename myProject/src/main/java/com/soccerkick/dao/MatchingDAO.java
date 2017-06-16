package com.soccerkick.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.GameBoardVO;
import com.soccerkick.vo.MatchingVO;
import com.soccerkick.vo.TeamVO;

public interface MatchingDAO {
	
	public int execInsert(MatchingVO vo);
	
	public GameBoardVO execItemactive();
	
	public ArrayList<GameBoardVO> execItem();
}
