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
    	function loginValidation() {
    		var userId = $("#userId").val();
    		var userPwd = $("#userPwd").val();
    		
    		if(!userId) {
    			swal("아이디를 입력해주세요.", "", "error");
    			$("#userId").focus();
    			return false;
    		} else if(!userPwd) {
    			swal("암호를 입력해주세요.", "", "error");
    			$("#userPwd").focus();
    			return false;
    		} else {
    			login(userId, userPwd);
    		}
    	}
    	
    	function login(userId, userPwd) {
    		$.ajax({
    			url: "/login",
    			type: 'POST',
    			data: {userId : userId,
    				userPwd : userPwd
    			},
    			success: function(data) {
    				if(data == 2) {
    					swal("아이디 혹은 암호가 맞지 않습니다.", "", "error");
    					return false;
    				} else if(data == 3) {
    					location.href = "redirect:/";
    				}
    			}
    				
    		}
    	}
    	
    	function enterKeyCheck() {
    		if(event.keyCode == 13) {
    			loginValidation();
    		}
    	}
    </script>
    
  </head>

  <body>
    <!-- header import -->
    <c:import url="/WEB-INF/views/header.jsp"></c:import>
    <!-- end of header import -->

    <section>
      <div class="loginform">
        <h1>로그인</h1>
        <c:if test="${not empty param.msg}">
			<span class='valid-msg'>${param.msg}</span>
		</c:if>
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
          <input type="text" class="id" id="userId" name="userId" placeholder="아이디" autofocus onkeyup="enterKeyCheck()" /><br />
          <input type="password" class="pw" id="userPwd" name="userPwd" placeholder="암호" onkeyup="enterKeyCheck()" /><br />
          <br /><br />
          <input type="submit" value="로그인" class="login" id="login" onclick="loginValidation()" /><br>
          <input type="submit" value="회원가입" class="login" id="login" onclick="location.href='/agreement'" />
        </form>
      </div>
    </section>

    <!-- footer import -->
    <c:import url="/WEB-INF/views/footer.jsp"></c:import>
    <!-- end of header import -->
  </body>
</html>
