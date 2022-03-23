package com.commu.team3.repository;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.commu.team3.dto.MemberDTO;

public interface MemberRepository {

	@Insert("insert into member(userId, userPwd, userName, userEmail)"
			+ " values(#{userId},#{userPwd},#{userName},#{userEmail})")
	void insertmember(MemberDTO dto);
	
	MemberDTO selectMemberByUserId(@Param("userId")String userId);
	
	@Select("select * from member where userId = #{userId} and userPwd = #{userPwd}")
	MemberDTO authenticateUser(@Param("userId")String userId, @Param("userPwd")String userPwd);
}
