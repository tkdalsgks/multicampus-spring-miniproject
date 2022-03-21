<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1" />
    <title>마이페이지 | 멀캠 커뮤니티</title>

    <!-- CSS -->
    <link rel="stylesheet" href="resources/css/styles.css" />

    <!-- JAVASCRIPT -->
    <script src="resources/js/chatbot.js"></script>
    <script src="resources/js/mypage.js"></script>
    <script src="resources/js/sweetalert.min.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="resources/js/jquery-3.6.0.min.js"></script>

    <!-- MATERIAL ICONS-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
  </head>

  <body>
    <!-- header import -->
    <c:import url="/WEB-INF/views/header.jsp"></c:import>
    <!-- end of header import -->

    <section>
      <div class="mypage">
        <span class="material-icons">manage_accounts</span>
        <br />
        <form action="">
          <div class="label">아이디</div>
          <input type="text" class="infobox" />
          <br />
          <div class="label">이메일</div>
          <input type="text" class="infobox" />
          <br />
          <input type="button" value="회원정보 변경" class="infochange" id="infochange" />
          <br /><br />
          <div class="label">현재 비밀번호</div>
          <input type="text" class="infobox" />
          <br />
          <div class="label">새로운 비밀번호</div>
          <input type="text" class="infobox" /><br />
          <div class="label">비밀번호 확인</div>
          <input type="text" class="infobox" /><br />
          <input type="button" value="비밀번호 변경" class="infochange" id="pwchange" />
          <br /><br />
          <a href="javascript:secession();">
            <input type="button" value="회원탈퇴" class="infochange" id="secession" />
          </a>
          <!-- KAKAO SECESSION JAVASCRIPT -->
          <script src="resources/js/kakaosecession.js"></script>
        </form>
      </div>
    </section>

    <!-- footer import -->
    <c:import url="/WEB-INF/views/footer.jsp"></c:import>
    <!-- end of header import -->
  </body>
</html>
