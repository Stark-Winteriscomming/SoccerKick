package com.soccerkick.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.GameVO;
import com.soccerkick.vo.TeamVO;
 
public interface TeamDAO {
	public TeamVO execContent(int team_id); 
	
	public TeamVO teamView(String client_id); 
	     
	 
	public ArrayList<TeamVO> execSelect(@Param("keywordInput") String keywordInput);
	
	public void gameMatch(GameVO vo);
	
	public int execUpdate(@Param("count")int count,@Param("team_id")int team_id);
	
	public int execCount(int team_id);
	

	
} 
   