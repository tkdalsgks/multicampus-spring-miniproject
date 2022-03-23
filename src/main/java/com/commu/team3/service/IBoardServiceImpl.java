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
public class IBoardServiceImpl implements IBoardService {

	@Autowired
	@Qualifier("iboarddao")
	IBoardDAO dao;

	@Override
	public List<BoardDTO> boardList(String boardType, int page) {
//		int[] limit = new int[] { (page - 1) * 10, 10 };
		page = (page - 1) * 10;
		System.out.println(page);
		return dao.boardList(boardType, page);
	}

	@Override
	public void boardInsert(BoardDTO dto) {
		dao.boardInsert(dto);
	}

	@Override
	public BoardDTO boardDetail(int boardNo) {
		return dao.boardDetail(boardNo);
	}

	@Override
	public void boardUpdate(BoardDTO dto) {
		dao.boardUpdate(dto);
	}

	@Override
	public void boardDelete(int boardNo) {
		dao.boardDelete(boardNo);
	}

}
