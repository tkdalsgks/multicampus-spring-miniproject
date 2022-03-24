<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1" />
  <title>자유 게시판 | 멀캠 커뮤니티</title>

  <!-- CSS -->
  <link rel="stylesheet" href="resources/css/styles.css" />

  <!-- JAVASCRIPT -->
  <script src="resources/js/jquery-3.6.0.min.js"></script>
</head>

<body>
  <!-- header import -->
  <%@ include file="/WEB-INF/views/include/header.jsp" %>
  <!-- end of header import -->
  <section class="boardSection">
    <ul class="boardList">
      <li class="boardHead">
        <span style="margin-left: 13px">번호</span>
        <span style="margin-left: 30px">제목</span>
        <span></span>
        <span>내용</span>
        <span></span>
        <span style="margin-left: 20px">작성자</span>
        <span></span>
        <span>작성일</span>
        <span></span>
        <span style="margin-right: 30px">조회수</span>
        <span style="width: max-content"></span>
        <span></span>
      </li>
      <c:forEach items="${boardList}" var="board">
        <li class="boardLine" value=${board.boardNo}>
          <div>
            <a class="contents" id="boardInfo" name="boardInfo" href="boarddetail?boardNo=${board.boardNo}">
              <span>${board.boardNo}</span>
              <span>${board.boardName}</span>
              <span>${board.boardContent}</span>
              <span>${board.userName}</span>
              <span id="timeForToday">${board.regdate}</span>
            </a>
          </div>
          <div>
            <a class="btnClass" id="alterBtn" name="alterBtn" href="boardupdate?boardNo=${board.boardNo}">
              글 수정
            </a>
            <a class="btnClass" id="delBtn" name="delBtn">
              글 삭제
            </a>
          </div>
        </li>
      </c:forEach>
    </ul>
    <div id="boardPageNum">
      <!-- JS 영역 -->
    </div>
  </section>

  <!-- footer import -->
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
  <!-- end of footer import -->

  <script type="text/javascript" src="resources/js/anonymityboard_list.js"></script>
  <script>
    pagelistReady( ${pagenum} )
  </script>
</body>

</html>