<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>회원가입 약관동의 | 멀캠 커뮤니티</title>

    <!-- CSS -->
    <link rel="stylesheet" href="resources/css/styles.css" />
    
    <!-- JAVASCRIPT -->
    <script src="resources/js/chatbot.js"></script>
    <script src="resources/js/selectregister.js"></script>
    <script src="resources/js/sweetalert.min.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="resources/js/jquery-3.6.0.min.js"></script>

    <!-- FONTS -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
    href="https://fonts.googleapis.com/css2?family=Architects+Daughter&display=swap"
    rel="stylesheet"
    />

    <!-- accordion 접히는 Script 선언 -->
    <script>
      $(function () {
        $("#accordion").accordion();
        $('#accordion input[type="checkbox"]').click(function (e) {
          e.stopPropagation();
        });
      });
    </script>
  </head>

  <body>
    <section class="section">
      <div class="logo">
        <ul>
          <li>
            <a href="<c:url value='/' />">
              <img src="<c:url value='resources/images/multicampus_logo.png' />" class="logoimg">
            </a>
          </li>
          <li>
            <a href="<c:url value='/' />">
              <h1 class="logofont">.COMMUNITY</h1>
            </a>
          </li>
        </ul>
      </div>
      <div>
        <div class="general">
          <p>일반회원</p>
          <a href="register">
            <input type="button" value="일반 회원가입" class="generalbtn">
          </a>
        </div>
        <div class="sns">
          <p>간편회원</p>
          <div class="login_img">
            <a href="javascript:kakaoLogin();">
              <img src="<c:url value='resources/images/kakaotalk_img.png' />" class="kakaobtn">
            </a>
            <!-- KAKAO LOGIN JAVASCRIPT -->
            <script src="resources/js/kakaologin.js"></script>
          <img src="<c:url value='resources/images/google_img.png' />" class="googlebtn" id="googlebtn" onclick="display()">
        </div>
      </div>
    </section>
    
    <!-- footer import -->
    <c:import url="/WEB-INF/views/footer.jsp"></c:import>
    <!-- end of header import -->
  </body>
</html>
