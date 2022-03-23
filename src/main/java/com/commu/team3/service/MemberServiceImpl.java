package com.commu.team3.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.commu.team3.dao.IMemberDAO;
import com.commu.team3.dto.MemberDTO;
import com.commu.team3.repository.MemberRepository;

@Service("commuservice")
public class MemberServiceImpl implements MemberService {
	@Inject
	IMemberDAO dao;
	
	public MemberRepository memberRepository;
	
	// 회원가입
	@Override
	public int insertmember(MemberDTO dto) {
		return dao.insertmember(dto);
	}
	
	@Override
	public MemberDTO authenticateUser(String userId, String userPwd) {
		return memberRepository.authenticateUser(userId, userPwd);
	}
	
	// 로그인 체크
	@Override
	public String loginCheck(MemberDTO dto, HttpSession session) {
		String userId = dao.loginCheck(dto);
		if(userId != null) {	// 세션 변수 저장
			session.setAttribute("userId", dto.getUserId());
			session.setAttribute("userPwd", dto.getUserPwd());
		}
		return userId;
	}
	
	// 로그아웃
	@Override
	public void logout(HttpSession session) {
		session.invalidate();// 세션 초기화
	}
	
	// 회원정보
	@Override
	public MemberDTO memberView(String userId) {
		return dao.memberView(userId);
	}
	
	// 회원정보 수정
	@Override
	public int memberUpdate(MemberDTO dto) {
		return dao.memberUpdate(dto);
	}
	
	// 회원정보 삭제
	@Override
	public int memberDelete(String userId) {
		return dao.memberDelete(userId);
	}
	
	// 회원정보 수정 및 삭제를 위한 비밀번호 체크
	@Override
	public boolean checkPwd(String userId, String userPwd) {
		return dao.checkPwd(userId, userPwd);
	}
	
	// 아이디 중복체크
	public int checkId(MemberDTO dto) {
		int result = dao.checkId(dto);
		return result;
	}
}
