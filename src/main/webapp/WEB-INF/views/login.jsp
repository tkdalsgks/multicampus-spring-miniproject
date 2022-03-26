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
    <script src="resources/js/chatbot.js"></script>
    <script src="resources/js/sweetalert.min.js"></script>
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    <script src="resources/js/jquery-3.6.0.min.js"></script>
    
    <script type="text/javascript">
    	$(function() {
    		$("#btnLogin").click(function() {
    			var userId=$("#userId").val();
    			var userPwd=$("#userPwd").val();
    			
    			if(userId == "") {
    				swal("아이디를 입력해주세요.", "", "error");
    				$("#userId").focus();
    				return;
    			}
    			if(userPwd == "") {
    				swal("암호를 입력해주세요.", "", "error");
    				$("#userPwd").focus();
    				return;
    			}
    			// 폼 내부의 데이터를 전송할 주소
    			document.form1.action="${path}/user";
    			document.form1.submit();	// 제출
    		});
    	});
    </script>
    
  </head>

  <body>
    <!-- header import -->
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
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
        <form name="form1" method="post">
          <input type="text" class="id" id="userId" name="userId" placeholder="아이디" autofocus /><br />
          <input type="password" class="pw" id="userPwd" name="userPwd" placeholder="암호" /><br />
          <br /><br />
          <button type="button" class="login" id="btnLogin">로그인</button><br><br>
          <c:if test="${msg == 'error' }">
          	<script>
          		$(function() {
          			swal("아이디 또는 암호가 일치하지 않습니다.", "", "error");
          		})
          	</script>
          </c:if>
          <c:if test="${msg == 'logout' }">
          	<script>
          		$(function() {
          			swal("로그아웃 되었습니다.", "", "error");
          		})
          	</script>
          </c:if>
        </form>
        <div style="text-align: center;">
          <button type="submit" class="login" id="btnRegister" onclick="location.href='/find'">비밀번호 찾기</button>
          <button type="submit" class="login" id="btnRegister" onclick="location.href='/agreement'">회원가입</button>
        </div>
      </div>
    </section>

    <!-- footer import -->
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- end of footer import -->
  </body>
</html>
