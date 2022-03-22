package com.commu.team3.service;

import com.commu.team3.dto.MemberDTO;

public interface MemberService {
	// 회원가입
	public int insertmember(MemberDTO dto);
	
	MemberDTO authenticateUser(String userId, String userPwd);
}
