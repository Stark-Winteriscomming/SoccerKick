package com.soccerkick.dao;

import java.util.ArrayList;

import com.soccerkick.vo.GboardVO;
import com.soccerkick.vo.TeamVO;
  
public interface GboardDAO {
	
	public void insertApply(GboardVO vo);
	
	public ArrayList<TeamVO> execSelect();
	
	public TeamVO execContent(int team_id);
	
	
	
}