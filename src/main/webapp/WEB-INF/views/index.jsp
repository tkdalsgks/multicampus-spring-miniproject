<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1" />
    <title>멀티캠퍼스 커뮤니티</title>

    <!-- CSS -->
    <link rel="stylesheet" href="resources/css/styles.css" />

    <!-- JAVASCRIPT -->
    <script src="resources/js/chatbot.js"></script>
    <script src="resources/js/jquery-3.6.0.min.js"></script>
    <script src="resources/js/sweetalert.min.js"></script>

    <!-- BOOTSTRAP -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
  </head>
  <body>
    <!-- header import -->
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
    <!-- end of header import -->

    <section class="section">
      <div class="section_img">
        <img src="resources/images/carousel1.jpeg" alt="메인이미지" />
      </div>
      <br />
      <div class="article_left">
        <ul class="list-group list-group-flush">
          <h3 style="margin-bottom: 10px">댓글이 가장 많이 달린 게시글</h3>
          <li class="list-group-item"><a href="#">1</a></li>
          <li class="list-group-item"><a href="#">2</a></li>
          <li class="list-group-item"><a href="#">3</a></li>
          <li class="list-group-item"><a href="#">4</a></li>
          <li class="list-group-item"><a href="#">5</a></li>
          <li class="list-group-item"><a href="#">6</a></li>
          <li class="list-group-item"><a href="#">7</a></li>
          <li class="list-group-item"><a href="#">8</a></li>
          <li class="list-group-item"><a href="#">9</a></li>
          <li class="list-group-item"><a href="#">10</a></li>
        </ul>
      </div>
      <div class="article_right">
        <ul class="list-group list-group-flush">
          <h3 style="margin-bottom: 10px">새로운 질문</h3>
          <li class="list-group-item"><a href="#">1</a></li>
          <li class="list-group-item"><a href="#">2</a></li>
          <li class="list-group-item"><a href="#">3</a></li>
          <li class="list-group-item"><a href="#">4</a></li>
          <li class="list-group-item"><a href="#">5</a></li>
          <li class="list-group-item"><a href="#">6</a></li>
          <li class="list-group-item"><a href="#">7</a></li>
          <li class="list-group-item"><a href="#">8</a></li>
          <li class="list-group-item"><a href="#">9</a></li>
          <li class="list-group-item"><a href="#">10</a></li>
        </ul>
      </div>
    </section>

    <!-- footer import -->
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- end of footer import -->
  </body>
</html>
