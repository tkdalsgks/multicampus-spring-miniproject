package com.commu.team3.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.commu.team3.VO.MemberVO;
import com.commu.team3.dao.IMemberDAO;
import com.commu.team3.dto.MemberDTO;
import com.commu.team3.repository.MemberRepository;

@Service("commuservice")
public class MemberServiceImpl implements MemberService {
	@Autowired
	@Qualifier("commudao")
	IMemberDAO dao;
	
	public MemberRepository memberRepository;
	
	@Override
	public List<MemberDTO> memberlist() {
		return dao.memberlist();
	}

	@Override
	public int insertmember(MemberDTO dto) {
		return dao.insertmember(dto);
	}
	
	@Override
	public MemberDTO authenticateUser(String userId, String userPwd) {
		return memberRepository.authenticateUser(userId, userPwd);
	}
	
	@Override
    public int Login(MemberVO vo) throws Exception {
        return dao.Login(vo);
    }
}
