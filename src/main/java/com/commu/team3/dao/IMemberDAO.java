package com.commu.team3.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.commu.team3.dto.MemberDTO;

@Repository("commudao")
public class IMemberDAO {
	@Autowired
	SqlSession session;
	
	public List<MemberDTO> memberlist() {
		List<MemberDTO> list = session.selectList("memberlist");
		return list;
	}
	
//	public int insertmember(MemberDTO dto) {
//		int insertrow = session.insert("insertmember", dto);
//		return insertrow;
//	}
}
