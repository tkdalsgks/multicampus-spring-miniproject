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


	<h2> 게시물 작성 페이지</h2>
	<form name="dto" method="post" action="boardinsert">
		<div>
			제 목<input type=text name="boardName" id="boardName" placeholder="글 제목 입력">
		</div>
		<div>
			내 용<textarea name="boardContent" id="boardContent" placeholder="글 내용 입력"></textarea>
		</div>
		<div>
			작성자<input type=text name="userName" id="userName" placeholder="이름 입력">
		</div>
		<div>
			<input type="submit" value="작성">
		</div>
	</form>

</body>
</html>