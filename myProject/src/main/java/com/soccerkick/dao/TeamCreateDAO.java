package com.soccerkick.dao;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.TeamVO;

public interface TeamCreateDAO {
	
	public int execInsert(@Param("vo")TeamVO vo, @Param("count")int count);
	public TeamVO execFormation(String sid);
	public TeamVO execTeamid(String sid);
	// get a sequence
	public int getCurrentSeq();
	
	//put team _id into appropriate table
	public void insertIntoFormation(@Param("team_id") int team_id, @Param("formation") String formation);
}
