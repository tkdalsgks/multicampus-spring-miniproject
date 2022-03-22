package com.commu.team3.service;

import java.util.List;

import com.commu.team3.VO.MemberVO;
import com.commu.team3.dto.MemberDTO;

public interface MemberService {
	public List<MemberDTO> memberlist();
	public int insertmember(MemberDTO dto);
	
	MemberDTO authenticateUser(String userId, String userPwd);
	
	public int Login(MemberVO vo) throws Exception;
}
