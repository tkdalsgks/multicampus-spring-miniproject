package com.commu.team3.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commu.team3.dto.MemberDTO;

@Repository("commudao")
public class MemberDAO {
	@Autowired
	SqlSession session;
	
	// 회원가입
	public int insertmember(MemberDTO dto) {
		int insertrow = session.insert("insertmember", dto);
		return insertrow;
	}
}
