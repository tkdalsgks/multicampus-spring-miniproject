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
    
    <script type="text/javascript">
    	$(function() {
    		$("#btnUpdate").click(function() {
	    		if(confirm("회원정보를 수정하시겠습니까?")) {
		    		// 폼 내부의 데이터를 전송할 주소
		    		document.form1.action="${path}/update";
		    		document.form1.submit();	// 제출
	    		}
    		});
    	});
    	$(document).ready(function() {
    		$("#btnDelete").click(function() {
    			if(confirm("아이디를 정말 삭제하시겠습니까?")) {
    				if($("#userPwd").val() != $("#userPwd").val()) {
    					swal("암호가 틀렸습니다.", "정확한 암호를 다시 입력해주세요.", "error");
    				}
    				if($("#userPwd").val() == "") {
    					swal("암호가 틀렸습니다.", "정확한 암호를 다시 입력해주세요.", "error");
    				}
    				if($("#userPwd").val() == $("#userPwd").val()) {
    					// 폼 내부의 데이터를 전송할 주소
		    			document.form1.action="${path}/delete";
		    			document.form1.submit();	// 제출   
    				}
    			}
    		});
    	});
    </script>
  </head>

  <body>
    <!-- header import -->
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
    <!-- end of header import -->

    <section>
      <div class="mypage">
        <span class="material-icons">manage_accounts</span>
        <br />
        	<form name="form1" method="post">
        	  <h2>회원정보</h2>
        	  <br />
	          <div class="label">아이디</div>
	          <input name="userId" value="${userId }" class="infobox" readonly />
	          <br />
	          <br />
	          <h2>정보변경</h2>
	          <br />
	          <div class="label">이름</div>
	          <input name="userName" value="${userName }" class="infobox" />
	          <br />
	          <div class="label">이메일</div>
	          <input name="userEmail" value="${userEmail }" class="infobox" />
	          <br />
	          <div class="label">비밀번호</div>
	          <input type="password" name="userPwd" class="infobox" />
	          <br /><br />
	          <input type="button" value="회원정보 변경" class="infochange" id="btnUpdate" />
	          <br /><br />
	          <!-- <a href="javascript:secession();"> -->
	            <input type="button" value="회원탈퇴" class="infochange" id="btnDelete" />
	         <!--  </a> -->
	        </form>
          <!-- KAKAO SECESSION JAVASCRIPT -->
          <script src="resources/js/kakaosecession.js"></script>
      </div>
    </section>

    <!-- footer import -->
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- end of footer import -->
  </body>
</html>
