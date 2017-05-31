package com.soccerkick.dao;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.Formation_41212VO;
import com.soccerkick.vo.Formation_4231VO;
import com.soccerkick.vo.Formation_433VO;

public interface FormationDAO {
	public Formation_433VO execSelectFormation_433(@Param("team_id") int team_id); 
	public Formation_4231VO execSelectFormation_4231(@Param("team_id") int team_id);
	public Formation_41212VO execSelectFormation_41212(@Param("team_id") int team_id);
	//
	public void execUpdate(@Param("formation") String formation, @Param("team_id") int team_id, 
			@Param("position") String position, @Param("client_id") String client_id);
	
}
