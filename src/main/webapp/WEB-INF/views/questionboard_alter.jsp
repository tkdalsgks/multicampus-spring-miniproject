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

      #title {
        width: 960px;
        height: 30px;
        overflow: scroll;
        margin-bottom: 10px;
      }

      #contents {
        width: 960px;
        height: 500px;
        vertical-align: top;
        resize: none;
      }

      #button_div {
        margin: 20px auto;
      }

      #alter {
        margin-right: 25px;
      }

      #alter:hover {
        background-color: gray;
      }

      #delete:hover {
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
        $("#alter").on("click", function () {
          alert("게시물이 수정되었습니다.");
        });
        $("#delete").on("click", function () {
          alert("게시물이 삭제되었습니다.");
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
        <h2>질문 수정</h2>
      </div>

      <div id="wrap">
        <div id="title_div">
          <h3>제목</h3>
          <input type="text" id="title" name="title" required /><br />
        </div>
        <div class="contents_div">
          <h3>내용</h3>
          <textarea id="contents" name="contents" required></textarea><br />
        </div>
        <form id="button_div" action="question">
          <input type="submit" id="alter" value="수정" />
          <input type="submit" id="delete" value="삭제" />
        </form>
      </div>
    </section>

    <!-- footer import -->
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- end of footer import -->
  </body>
</html>
