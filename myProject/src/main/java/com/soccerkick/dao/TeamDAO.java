package com.soccerkick.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.GameVO;
import com.soccerkick.vo.TeamVO;
 
public interface TeamDAO {
	public TeamVO execContent(int team_id); 
	 
	public ArrayList<TeamVO> execSelect(@Param("keywordInput") String keywordInput);
	
	public void gameMatch(GameVO vo);
} 
   