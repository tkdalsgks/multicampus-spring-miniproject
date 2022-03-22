package com.commu.team3.dto;

import java.time.LocalDateTime;

import org.springframework.stereotype.Component;

public class BoardDTO {
	private String boardNo;
	private String boardName;
	private String boardContent;
	private String userName;
	private LocalDateTime regdate;

	public BoardDTO() {
		super();
	}

	public BoardDTO(String boardNo, String boardName, String boardContent, String userName, LocalDateTime regdate) {
		super();
		this.boardNo = boardNo;
		this.boardName = boardName;
		this.boardContent = boardContent;
		this.userName = userName;
		this.regdate = regdate;
	}

	public String getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(String boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardName() {
		return boardName;
	}

	public void setBoardName(String boardName) {
		this.boardName = boardName;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public LocalDateTime getRegdate() {
		return regdate;
	}

	public void setRegdate(LocalDateTime regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "BoardDTO [boardNo=" + boardNo + ", boardName=" + boardName + ", boardContent=" + boardContent
				+ ", userName=" + userName + ", regdate=" + regdate + "]";
	}

}
