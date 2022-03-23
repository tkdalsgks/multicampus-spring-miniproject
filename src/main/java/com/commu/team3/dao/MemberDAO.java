package com.commu.team3.dao;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.commu.team3.dto.MemberDTO;

@Repository("commudao")
public class MemberDAO {
	@Inject
	SqlSession session;
	
	// 회원가입
	public int insertmember(MemberDTO dto) {
		int insertrow = session.insert("insertmember", dto);
		return insertrow;
	}
	
	// 로그인 체크
	public String loginCheck(MemberDTO dto) {
		return session.selectOne("loginCheck", dto);
	}
	
	// 회원 정보 조회
	public MemberDTO memberView(String userId) {
		return session.selectOne("memberView", userId);
	}
	
	// 회원 정보 수정
	public int memberUpdate(MemberDTO dto) {
		return session.update("memberUpdate", dto);
	}
	
	// 회원정보 삭제
	public int memberDelete(String userId) {
		return session.delete("memberDelete", userId);
	}
	
	// 회원정보 수정 및 삭제를 위한 비밀번호 체크
	public boolean checkPwd(String userId, String userPwd) {
		boolean result = false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("userId", userId);
		map.put("userPwd", userPwd);
		int count = session.selectOne("checkPwd", map);
		if(count == 1) result = true;
		return result;
	}
}
