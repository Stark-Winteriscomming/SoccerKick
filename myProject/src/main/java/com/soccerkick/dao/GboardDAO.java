package com.soccerkick.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.GameBoardVO;
import com.soccerkick.vo.GboardVO;
import com.soccerkick.vo.MemberSelectVO;
import com.soccerkick.vo.TeamVO;

public interface GboardDAO {

	public void insertApply(GboardVO vo, @Param("sid") String sid, @Param("a_apy_position") String a_apy_position,@Param("team_id") int team_id);

	public ArrayList<TeamVO> execSelect();
	
	public ArrayList<GameBoardVO> execGameList();

	public TeamVO execContent(@Param("team_id") int team_id);
	  
	public MemberSelectVO execApplyid(String sid);
	
	public String execClientid(String sid);
}