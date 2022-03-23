package com.commu.team3.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.commu.team3.dao.IBoardDAO;
import com.commu.team3.dto.BoardDTO;

@Service("iboardservice")
public class IBoardServiceImpl implements IBoardService{
	
	@Autowired
	@Qualifier("iboarddao")
	IBoardDAO dao;
	
	

	@Override
	public List<BoardDTO> boardList() {
		return dao.boardList();
	}

	@Override
	public void boardInsert(BoardDTO dto) {
		dao.boardinsert(dto);
	}

	@Override
	public BoardDTO boardDetail(int boardNo) {
		return dao.boarddetail(boardNo);
	}

	@Override
	public void boardUpdate(BoardDTO dto) {
		dao.boardupdate(dto);
	}

	@Override
	public void boardDelete(int boardNo) {
		dao.boarddelete(boardNo);
	}
	
	
}
