<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1" />
    <title>로그인 | 멀캠 커뮤니티</title>

    <!-- CSS -->
    <link rel="stylesheet" href="resources/css/styles.css" />

    <!-- JAVASCRIPT -->
    <script src="resources/js/login.js"></script>
    <script src="resources/js/chatbot.js"></script>
    <script src="resources/js/sweetalert.min.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="resources/js/jquery-3.6.0.min.js"></script>
  </head>

  <body>
    <!-- header import -->
    <c:import url="/WEB-INF/views/header.jsp"></c:import>
    <!-- end of header import -->

    <section>
      <div class="loginform">
        <h1>로그인</h1>
        <!-- KAKAO LOGIN -->
        <div class="login_img">
          <a href="javascript:kakaoLogin();">
            <img src="resources/images/kakaotalk_img.png" alt="카카오계정 로그인" />
          </a>
          <!-- KAKAO LOGIN JAVASCRIPT -->
          <script src="resources/js/kakaologin.js"></script>
        </div>
        <br />
        <form action="/login" method="post">
          <input type="text" class="id" id="id" name="id" placeholder="아이디" /><br />
          <input type="password" class="pw" id="pw" name="pw" placeholder="암호" /><br />
          <input type="password" class="pw2" id="pw2" name="pw2" placeholder="암호 확인" />
          <br /><br />
          <input type="button" value="로그인" class="login" id="login" onclick="display()" />
        </form>
        <div id="result"></div>
      </div>
    </section>

    <!-- footer import -->
    <c:import url="/WEB-INF/views/footer.jsp"></c:import>
    <!-- end of header import -->
  </body>
</html>
