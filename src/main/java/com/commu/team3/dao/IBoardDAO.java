package com.commu.team3.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.commu.team3.dto.BoardDTO;

/**
 * @author Seongil, Yoon
 * @author Ena, Yoon
 * @author Seung-hyun, Kim
 */

//  root-context.xml에 Mapper스캔 등록, 없으면 빈생성 오류
//  <mybatis-spring:scan base-package="com.commu.team3.dao" annotation="org.apache.ibatis.annotations.Mapper"/>
@Mapper
@Repository("iboarddao")
public interface IBoardDAO {

	// 리스트
//	public List<BoardDTO> boardList(@Param("boardType") String boardType, int[] limit);
	public List<BoardDTO> boardList(@Param("boardType") String boardType, @Param("page") int page);
	
	// 게시물의 userId 조회
	public String BoardUserId(@Param("boardNo") int boardNo);

	// 작성
	public void boardInsert(BoardDTO dto);

	// 조회
	public BoardDTO boardDetail(int boardNo);

	// 수정
	public void boardUpdate(BoardDTO dto);

	// 삭제
	public void boardDelete(int boardNo);

	// 글 총갯수
	public int boardCount(@Param("boardType") String boardType);

}
