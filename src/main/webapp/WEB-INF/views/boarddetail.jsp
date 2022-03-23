<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/jquery-3.6.0.min.js" />
<script>
	$(document).ready(function(){
		
	});
</script>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
</head>
<body>

	<h2>상세페이지</h2>
	<a href="boardinsert">글쓰기</a>
	<table>
		<th>정보</th>
		<th>데이터</th>
		<tr>
			<td>작성일</td>
			<td>${dto.regdate }</td>
		</tr>
		<tr>
			<td>글번호</td>
			<td>${dto.boardNo }</td>
		</tr>
		<tr>
			<td>제 목</td>
			<td>${dto.boardName }</td>
		</tr>
		<tr>
			<td>내 용</td>
			<td>${dto.boardContent }</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${dto.userName }</td>
		</tr>
	</table>
	
	<a href="boardupdate?boardNo=${dto.boardNo }">수정</a>
	<a href="boarddelete?boardNo=${dto.boardNo }">삭제</a>

</body>
</html>