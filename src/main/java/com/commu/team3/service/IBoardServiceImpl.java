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
	private final static int BOARD_PER_PAGE = 10;

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
	public int boardCount(String boardType) {
		int total = dao.boardCount(boardType);
		int pagenum = 0;
		if (total % BOARD_PER_PAGE == 0) { // 10으로 고정
			pagenum = total / BOARD_PER_PAGE;
		} else {
			pagenum = total / BOARD_PER_PAGE + 1; // 여분의 페이지1개를 추가하기 위해
		}
		return pagenum; // 필요한 페이지갯수 넘김
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
