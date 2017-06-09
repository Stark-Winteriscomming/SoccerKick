package com.soccerkick.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.MemberSelectVO;
import com.soccerkick.vo.TeamVO;

public interface MemberSelectDAO {

	public ArrayList<MemberSelectVO> execSelect(@Param("team_id") String team_id, @Param("position")String position);

	public ArrayList<MemberSelectVO> execSelectt(@Param("team_id") int team_id);

	public int execInsert(String no);
	
	public TeamVO execFormation(String sid);
	
	public int execDelete(String sid);
	
	public MemberSelectVO execPosition(String[] no);
	
	public int execCount(@Param("team_id")int team_id, @Param("formation")String formation);
}
