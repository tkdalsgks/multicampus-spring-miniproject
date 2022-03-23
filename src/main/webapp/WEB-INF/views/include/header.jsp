<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- CSS -->
<link rel="stylesheet" href="resources/css/styles.css" />

<!-- JAVASCRIPT -->
<script src="resources/js/chatbot.js"></script>
<script src="resources/js/sweetalert.min.js"></script>
<script type="text/javascript" src="libs/sweetalert.min.js"></script>

<!-- MATERIAL ICONS-->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />

<!-- FONTS -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link href="https://fonts.googleapis.com/css2?family=Architects+Daughter&display=swap" rel="stylesheet" />

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

    $("#freeboard, #qboard, #aboard").css({
      fontSize: "20px",
    });

    $("#boardWrite").css({
      float: "right",
    });
  });
</script>
<!-- end of header -->

<header>
  <!-- 헤더 -->
  <div id="header">
    <h1 id="logo_font">
      <a class="logo_font" href="<c:url value='/' />">
        <img src="<c:url value='resources/images/multicampus_logo.png' />" alt="멀티캠퍼스 커뮤니티" id="logoimg" />
        .COMMUNITY
      </a>
    </h1>
    <div id="headerlogin">
      <c:if test="${userId == null }">
      <ul>
      	<li><a href="<c:url value='/login' />">로그인</a></li>
      	 <li><a href="<c:url value='/agreement' />">회원가입</a></li>
      </ul>
      </c:if>
      <c:if test="${userId != null }">
      <ul>
      	<li><a href="<c:url value='/logout' />">로그아웃</a></li>
        <li><a href="<c:url value='/mypage' />">마이페이지</a></li>
      </ul>
      </c:if>
    </div>
  </div>
  <nav>
    <div id="nav">
      <!-- 헤더 메뉴 -->
      <div id="menu">
        <ul>
          <li id="freeboard"><a href="<c:url value='/free?page=1' />">자유게시판</a></li>
          <li id="qboard"><a href="<c:url value='/question' />">질문게시판</a></li>
          <li id="aboard"><a href="<c:url value='/anonymity' />">익명게시판</a></li>
          <li id=""><a href="<c:url value='/chat' />">채팅방</a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>
