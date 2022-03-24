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

  <style>
    body {
      background-color: #ffffff;
    }

    section {
      text-align: center;
    }

    .section {
      display: flex;
      flex-direction: column;
      justify-content: center;
      text-align: center;
      transform: translateY(10%);
    }

    h3 {
      display: inline-block;
      margin-right: 20px;
    }

    #boardName {
      width: 960px;
      height: 30px;
      overflow: scroll;
      margin-bottom: 10px;
    }

    #userName {
      width: 960px;
      height: 30px;
      overflow: scroll;
      margin-bottom: 10px;
    }

    #boardContent {
      width: 960px;
      height: 500px;
      vertical-align: top;
      resize: none;
    }

    #button_div {
      margin: 20px auto;
    }

    #input:hover {
      background-color: gray;
    }

    input[type="submit"] {
      background-color: rgb(230, 150, 80);
      border-color: rgb(230, 150, 80);
      width: 80px;
      height: 40px;
    }
  </style>

  <script>
    $(document).ready(function () {
      $("#wrap").on("submit", function (e) {
        alert("게시물이 등록되었습니다.");
      });
    });
  </script>
</head>

<body>
   <!-- header import -->
   <%@ include file="/WEB-INF/views/include/header.jsp" %>
   <!-- end of header import -->


  <section class="section">
    <div id="header">
      <h2>게시물 작성</h2>
    </div>

    <form id="wrap" method="post" action="boardinsert">
      <div id="title_div">
        <h3>제목</h3>
        <input type="text" name="boardName" id="boardName" placeholder="글 제목 입력" required /><br />
      </div>
      <div id="contents_div">
        <h3>내용</h3>
        <textarea name="boardContent" id="boardContent" placeholder="글 내용 입력" required></textarea><br />
      </div>
      <div>
        <h3>글 타입</h3>
        <label>
          <input type="radio" name="boardType" value="free">
          <span>자유</span>
        </label>
        <label>
          <input type="radio" name="boardType" value="qeus">
          <span>질문</span>
        </label>
        <label>
          <input type="radio" name="boardType" value="anony">
          <span>익명</span>
        </label>
      </div>
      <div id="button_div">
        <input type="submit" id="input" value="등록" />
      </div>
    </form>
  </section>

  <!-- footer import -->
  <%@ include file="/WEB-INF/views/include/footer.jsp" %>
  <!-- end of footer import -->


</body>

</html>