<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1" />
    <title>질문 게시판 | 멀캠 커뮤니티</title>

    <!-- CSS -->
    <link rel="stylesheet" href="resources/css/styles.css" />

    <!-- JAVASCRIPT -->
    <script src="resources/js/jquery-3.6.0.min.js"></script>
  </head>

  <body>
    <!-- header import -->
    <c:import url="/WEB-INF/views/header.jsp"></c:import>
    <!-- end of header import -->

    <script type="text/javascript">
      $(document).ready(function () {
          // load메소드로 페이지를 불러오고 DOM을 조작할려면 콜백함수 사용
          let html = `
          <li id="boardWrite">
              <a href="questioninput">질문 작성</a>
          </li>`;

          $("#menu ul").append(html);

        });

      });
    </script>

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
        <!-- JS 영역 -->
       
      </ul>
    </section>

    <!-- footer import -->
    <c:import url="/WEB-INF/views/footer.jsp"></c:import>
    <!-- end of header import -->

    <script type="text/javascript" src="resources/js/qustionboard_list.js"></script>
  </body>
</html>
