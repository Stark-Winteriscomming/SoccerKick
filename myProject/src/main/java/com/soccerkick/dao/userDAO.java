package com.soccerkick.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.soccerkick.vo.userVO;

@Repository
public class userDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.soccerkick.mapper.userDAO";
	
	public int userCheck(userVO vo) throws Exception {
	    return session.selectOne(namespace + ".userCheck", vo);
	 };
	  
	public userVO execSelectAdmin(@Param("client_id")String client_id) throws Exception{
		return session.selectOne(namespace + ".getClient", client_id);
	};
	
	//get client by id
	public userVO getClient(@Param("client_id")String client_id) throws Exception{
		return session.selectOne(namespace + ".getClient", client_id);
	};
	
	//get client by id
	public List<userVO> getClientList() throws Exception{
		return session.selectList(namespace + ".getClientList");
	};

}
