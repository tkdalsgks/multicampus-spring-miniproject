package com.commu.team3.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.commu.team3.dto.BoardDTO;

@Repository("iboarddao")
public class IBoardDAO {
	
	@Autowired
	SqlSession session;
	
	//리스트
	public List<BoardDTO> boardList() {
		return session.selectList("boardList");
	}
	
	//작성
	public void boardinsert(BoardDTO dto) {
		session.insert("boardInsert", dto);
	}
	
	//조회
	public BoardDTO boarddetail(int boardNo) {
		return session.selectOne("boardDetail", boardNo);
	}
	
	
	//수정
	public void boardupdate(BoardDTO dto) {
		session.update("boardUpdate", dto);
	}

	
	//삭제
	public void boarddelete(int boardNo) {
		session.delete("boardDelete", boardNo);
	}

}
