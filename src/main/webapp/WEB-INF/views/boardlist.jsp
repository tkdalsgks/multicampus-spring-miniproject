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

    
    <h2>자유게시판</h2>
    <a href="boardinsert">글쓰기</a>
    <table>
    	<tr>
    		<th>글번호</th>
    		<th>제 목</th>
    		<th>작성자</th>
    		<th>작성일</th>
    	</tr>
    	<c:forEach var="row" items="${list }">
    		<tr>
    			<td>${row.boardNo }</td>
    			<td><a href="boarddetail?boardNo=${row.boardNo}">${row.boardName }</a></td>
    			<td>${row.userName }</td>
    			<td>${row.regdate }</td>
    		</tr>
    	</c:forEach>
    </table>

</body>
</html>