package com.soccerkick.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.soccerkick.vo.GameVO;
import com.soccerkick.vo.TeamVO;

public interface GameMatchDAO {
	public ArrayList<GameVO> execSelect(String sid);
	
	public ArrayList<GameVO> execSchedule(String sid);
	
	public ArrayList<GameVO> execApplyList(String sid);
	
	public void gameMatchOk(@Param("applicant") String applicant, @Param("host") String host);
	
	
}
