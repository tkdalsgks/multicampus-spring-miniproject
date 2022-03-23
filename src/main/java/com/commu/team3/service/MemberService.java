package com.commu.team3.service;

import javax.servlet.http.HttpSession;

import com.commu.team3.dto.MemberDTO;

public interface MemberService {
	// 회원가입
	public int insertmember(MemberDTO dto);
	
	// 로그인 체크
	public String loginCheck(MemberDTO dto, HttpSession session);
	
	// 로그아웃
	public void logout(HttpSession session);
	
	// 회원정보 상세조회
	public MemberDTO memberView(String userId);
	
	// 회원정보 수정
	public int memberUpdate(MemberDTO dto);
	
	// 회원정보 삭제
	public int memberDelete(String userId);
	
	// 비밀번호 체크
	public boolean checkPwd(String userId, String userPwd);
	
	MemberDTO authenticateUser(String userId, String userPwd);

}
