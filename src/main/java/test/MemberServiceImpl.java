package test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("commuservice")
public class MemberServiceImpl implements MemberService {
	@Autowired
	@Qualifier("commudao")
	MemberDAO dao;
	
	@Override
	public List<MemberDTO> memberlist() {
		return dao.memberlist();
	}

//	@Override
//	public int insertmember(MemberDTO dto) {
//		return dao.insertmember(dto);
//	}
}
