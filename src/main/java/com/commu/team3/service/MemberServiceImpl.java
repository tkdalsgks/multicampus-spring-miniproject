package com.commu.team3.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.commu.team3.dao.IMemberDAO;
import com.commu.team3.dto.MemberDTO;

@Service("commuservice")
public class MemberServiceImpl implements MemberService {
	@Autowired
	@Qualifier("commudao")
	IMemberDAO dao;
	
	@Override
	public List<MemberDTO> memberlist() {
		return dao.memberlist();
	}

//	@Override
//	public int insertmember(MemberDTO dto) {
//		return dao.insertmember(dto);
//	}
}
