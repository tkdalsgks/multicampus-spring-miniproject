package com.commu.team3.service;

import java.util.List;

import com.commu.team3.dto.BoardDTO;

public interface IBoardService {
	
	public List<BoardDTO> boardList();
	
	public void boardInsert(BoardDTO dto);
	
	public BoardDTO boardDetail(int boardNo);
	
	public void boardUpdate(BoardDTO dto);
	
	public void	boardDelete(int boardNo);
}
