package com.soccerkick.dao;

import org.apache.ibatis.annotations.Param;

public interface FormationDAO {
	public void execUpdate(@Param("formation") String formation, @Param("team_id") int team_id, 
			@Param("position") String position, @Param("client_id") String client_id);
	
}
