package com.soccerkick.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface AddressBookDAO {
	public List getAddress(String my_id);
	public int isMatched(@Param("my_id") String my_id, @Param("opposite_id")String opposite_id);
	public void execInsert(@Param("my_id") String my_id,@Param("opposite_id") String opposite_id);
}
