package com.soccerkick.dao;
import java.sql.*;
import java.util.ArrayList;

import com.soccerkick.vo.*;


public interface AdminDAO {
      
   public int execSelect(AdminVO vo);
   public AdminVO execSelectAdmin(AdminVO vo);
   public ArrayList<AdminVO> execSelectt();
   public int userCheck(userVO vo);
	  

}
