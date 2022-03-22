package com.commu.team3.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.commu.team3.dao.MemberDAO;
import com.commu.team3.dto.MemberDTO;
import com.commu.team3.repository.MemberRepository;

@Service("commuservice")
public class MemberServiceImpl implements MemberService {
	@Autowired
	@Qualifier("commudao")
	MemberDAO dao;
	
	public MemberRepository memberRepository;
	
	@Override
	public int insertmember(MemberDTO dto) {
		return dao.insertmember(dto);
	}
	
	@Override
	public MemberDTO authenticateUser(String userId, String userPwd) {
		return memberRepository.authenticateUser(userId, userPwd);
	}
	
}
