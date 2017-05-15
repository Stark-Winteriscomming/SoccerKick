package com.soccerkick.dao;

import java.sql.*;
import java.util.ArrayList;
import org.apache.ibatis.annotations.Param;
import com.soccerkick.vo.*;
  
public interface GboardDAO {
	
	public void insertApply(GboardVO vo);
	
	public ArrayList<TeamVO> execSelect();
	
	
	
}