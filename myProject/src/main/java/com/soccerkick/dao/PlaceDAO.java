package com.soccerkick.dao;

import java.sql.*;
import java.util.*;
import com.soccerkick.vo.*;

public interface PlaceDAO {

	public ArrayList<PlaceVO> execSelect();
	public PlaceVO execContent(int no);	
	public int execInsert(PlaceVO vo);
	public int execUpdate(PlaceVO vo);
	
	public int execDelete(String no);
	
	
	
}


























