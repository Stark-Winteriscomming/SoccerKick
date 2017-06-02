package com.soccerkick.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.GameBoardVO;
import com.soccerkick.vo.GameVO;
import com.soccerkick.vo.TeamVO;
 
public interface TeamDAO {
	public TeamVO execContent(int team_id); 
	
	public TeamVO teamView(String client_id); 
	
	public GameBoardVO execGameInfo(@Param("client_id") String client_id,@Param("gameno") int gameno);
	 
	public ArrayList<TeamVO> execSelect(@Param("keywordInput") String keywordInput);
	
	public void gameMatch(GameVO vo);
	
	
} 
   