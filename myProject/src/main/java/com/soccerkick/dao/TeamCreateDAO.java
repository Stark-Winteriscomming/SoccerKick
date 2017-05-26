package com.soccerkick.dao;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.TeamVO;

public interface TeamCreateDAO {
	
	public int execInsert(TeamVO vo);
	public TeamVO execFormation(String sid);
	public TeamVO execTeamid(String sid);
	// get a sequence
	public int getCurrentSeq();
	
	//put team _id into appropriate table
	public void insertIntoformation(@Param("team_id") int team_id, @Param("formation") String formation);
}
