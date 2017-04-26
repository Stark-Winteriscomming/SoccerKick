package com.soccerkick.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.soccerkick.vo.*;

@Repository
public class userDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace = "com.soccerkick.mapper.userDAO";
	
	public int userCheck(userVO vo) throws Exception {
	    return session.selectOne(namespace + ".userCheck", vo);
	  }

}
