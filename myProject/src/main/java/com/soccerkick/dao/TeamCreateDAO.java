package com.soccerkick.dao;

import java.util.ArrayList;

import com.soccerkick.vo.JoinVO;
import com.soccerkick.vo.TeamVO;

public interface TeamCreateDAO {
	
	public int execInsert(TeamVO vo);
	public TeamVO execFormation(String sid);
	public TeamVO execTeamid(String sid);
}
