<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1" />
    <title>질문게시판 | 멀캠 커뮤니티</title>

    <!-- CSS -->
    <link rel="stylesheet" href="resources/css/styles.css" />

    <!-- JAVASCRIPT -->
    <script src="resources/js/chatbot.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

    <!-- Jquery -->
    <script src="resources/js/jquery-3.6.0.min.js"></script>
  </head>

  <!-- MATERIAL ICONS-->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  <!-- FONTS -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Architects+Daughter&display=swap" rel="stylesheet" />

  <!-- BOOTSTRAP -->
  <link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
    crossorigin="anonymous"
  />

  <!-- header -->
  <script>
    $(document).ready(function () {
      $("#logoimg").css({
        width: "250px",
      });

      $("#logo_font").css({
        fontSize: "30px",
        fontFamily: "'Architects Daughter', cursive",
        color: "rgb(230, 150, 80)",
      });

      $("#header, #nav").css({
        width: "1140px",
        height: "80px",
        margin: "0 auto",
      });

      $("#nav").css({
        display: "block",
      });

      $("#header h1").css({
        float: "left",
        paddingTop: "28px",
      });

      $("#header #headerlogin").css({
        float: "right",
      });

      $("#header #headerlogin li").css({
        float: "left",
        marginTop: "10px",
        marginLeft: "40px",
        lineHeight: "80px",
        fontSize: "20px",
      });

      $("#menu").css({
        display: "fixed",
        width: "1140px",
        height: "60px",
        margin: "0 auto",
        float: "right",
        borderTop: "0.5px solid gray",
        borderBottom: "0.5px solid gray",
      });

      $("#menu li").css({
        float: "left",
        marginLeft: "40px",
        lineHeight: "60px",
        fontSize: "20px",
      });

      $("#freeboard, #qboard").css({
        fontSize: "20px",
      });
      $("#boardWrite").css({
        float: "right",
      });
    });
  </script>
  <!-- end of header -->

  <body>
    <header>
      <!-- 헤더 -->
      <div id="header">
        <h1 id="logo_font">
          <a class="logo_font" href="<c:url value='/' />"><img src="<c:url value='/resources/images/multicampus_logo.png' />" alt="멀티캠퍼스 커뮤니티" id="logoimg" /> .COMMUNITY</a>
        </h1>
        <div id="headerlogin">
          <ul>
            <li>
              <a href="javascript:kakaoLogout();"> 로그아웃 </a>

              <!-- KAKAO LOGOUT JAVASCRIPT -->
              <script src="resources/js/kakaologout.js"></script>
            </li>
            <li><a href="mypage">마이페이지</a></li>
            <li><a href="agreement">회원가입</a></li>
          </ul>
        </div>
      </div>
      <nav>
        <div id="nav">
          <!-- 헤더 메뉴 -->
          <div id="menu">
            <ul>
              <li id="freeboard"><a href="<c:url value='/free' />">자유게시판</a></li>
              <li id="qboard"><a href="<c:url value='/question' />">질문게시판</a></li>
              <li id="qboard"><a href="<c:url value='/anonymity' />">익명게시판</a></li>
              <li id=""><a href="<c:url value='/chat' />">채팅방</a></li>
            </ul>
          </div>
        </div>
      </nav>
    </header>

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
    <c:import url="/WEB-INF/views/footer.jsp"></c:import>
    <!-- end of header import -->
  </body>
</html>
