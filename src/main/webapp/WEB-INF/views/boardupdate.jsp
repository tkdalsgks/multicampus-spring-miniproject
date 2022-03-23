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

	<h2>게시물 수정</h2>
	<a href="boardinsert">글쓰기</a>
	<form name="updateform" method="post" action="boardupdate">
		<div>글번호</div>
		<div><input name="boardNo" value="${dto.boardNo }" type="text" readonly="readonly" /></div>
		<div>작성자</div>
		<div><input name="userName" value="${dto.userName }" type="text" readonly="readonly" /></div>
		<div>제 목</div>
		<div><input name="boardName" value="${dto.boardName }" type="text" /></div>
		<div>내 용</div>
		<div><textarea name="boardContent">${dto.boardContent }</textarea></div>
		<div>
			<input type="submit" value="글수정" />
			<input type="reset" value="리셋" />
		</div>
	</form>

</body>
</html>