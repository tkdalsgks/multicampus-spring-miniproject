<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1" />
    <title>회원 가입 | 멀캠 커뮤니티</title>

    <!-- CSS -->
    <link rel="stylesheet" href="resources/css/styles.css" />
    
    <!-- JAVASCRIPT -->
    <script src="resources/js/userlist.js"></script>
    <script src="resources/js/sweetalert.min.js"></script>
    <script src="resources/js/jquery-3.6.0.min.js"></script>

    <style>
      .section {
          display: flex;
          flex-direction: column;
          justify-content: center;
          text-align: center;
          transform: translateY(30%);
        }

        .section h2 {
          margin-bottom: 30px;
        }

        div.create {
          width: 800px;
          text-align: center;
          padding: 30px;
          border-bottom: 1px solid black;
          margin: auto;
        }

        table {
          height: 300px;
          width: 900px;
          border-top: 3px solid black;
          margin-right: auto;
          margin-left: auto;
        }

        td {
          border-bottom: 1px dotted black;
        }

        .but1 {
          background-color: rgb(230, 150, 80);
          border-color: rgb(230, 150, 80);
          width: 80px;
          height: 30px;
          margin-left: 10px;
        }

        .col1 {
          background-color: #e8e8e8;
          padding: 10px;
          text-align: right;
          font-weight: bold;
          font-size: 16px;
        }

        .col2 {
          text-align: left;
          padding: 5px;
        }

        .col2input {
          width: 200px;
          height: 30px;
          border: 1px solid black;
        }

        .but3,
        .but4 {
          background-color: rgb(230, 150, 80);
          border-color: rgb(230, 150, 80);
          width: 80px;
          height: 30px;
    </style>
  </head>

  <body>
    <!-- header import -->
    <%@ include file="/WEB-INF/views/include/header.jsp" %>
    <!-- end of header import -->

    <script type="text/javascript">
      $(document).ready(function () {
        $("#confirm").click(function () {
          if ($("#userName").val() == "") {
            swal("이름을 입력해주세요.", "", "error");
            $("#userName").focus();
            return false;
          }
          if ($("#userId").val() == "") {
            swal("아이디를 입력해주세요.", "", "error");
            $("#userId").focus();
            return false;
          }
          if ($("#userPwd").val() == "") {
            swal("암호를 입력해주세요.", "", "error");
            $("#userPwd").focus();
            return false;
          }
          //pw확인
          var userPwd = $("#userPwd").val();
          var userPwdConfirm = $("#userPwdConfirm").val();

          if (userPwd != userPwdConfirm) {
            swal("암호가 일치하지 않습니다.", "", "error");
            $("#userPwdConfirm").focus();
            return false;
          }
          swal("회원가입이 완료되었습니다.", "", "success");
          userlist.push($("#userId").val());
          location.href = "login";
        });
        
        
      });

      function idCheck() {
        //아이디 유효성 검사
        var idReg = /^[a-zA-Z]+[a-z0-9A-Z]{3,19}$/g;
        var idCk = false;

        if (!idReg.test($("#userId").val())) {
          swal("영문과 숫자 4~12자 이내로 입력하세요.", "", "warning");
          return;
        }
        
        $("#checkId").on("click", function() {
			$.ajax({
				url: '<%=request.getContextPath() %>/checkId',
				data: {"userId" : $("#userId").val()},
				type: 'post',
				dataType: 'json',
				success: function(data) {
					if(data == 1) {
						$("#result1").html("중복된 아이디 입니다.");
					} else if(data == 0) {
						$("#result1").html("사용 가능한 아이디 입니다.");
					}
				}
			});
		});
      }
    </script>

    <section class="section">
      <form action="register" method="post">
        <table>
          <caption>
            <h2>회원가입 양식</h2>
          </caption>
          <tr>
            <td class="col1">아이디</td>
            <td class="col2">
              <input type="text" name="userId" id="userId" maxlength="14" class="col2input" />
              <button class="but1" type="button" id="checkId" onclick="idCheck()">중복확인</button>
              <br />
              <span id="result1"></span>
            </td>
          </tr>
          <tr>
            <td class="col1">비밀번호</td>
            <td class="col2">
              <input type="password" name="userPwd" id="userPwd" maxlength="16" class="col2input" />
            </td>
          </tr>
          <tr>
            <td class="col1">비밀번호 확인</td>
            <td class="col2">
              <input type="password" name="userPwd2" id="userPwdConfirm" maxlength="16" class="col2input" />
            </td>
          </tr>
          <tr>
            <td class="col1">이름</td>
            <td class="col2">
              <input type="text" name="userName" id="userName" maxlength="5" class="col2input" />
            </td>
          </tr>
          <tr>
            <td class="col1">이메일</td>
            <td class="col2">
              <input type="text" name="userEmail" id="userEmail" maxlength="14" class="col2input" />
            </td>
          </tr>
          <tr>
          	<td class="col1">인증번호</td>         
          	<td class="col2">
          	<input type="text" name="emailCheck" id="emailCheck" maxlength="14" class="col2input" />
            <input class="but1" type="button" value="인증번호 확인" id="btn-emailcheck" onclick="emailCheck()" />
            </td>
          </tr>
        </table>
      <div class="create">
        <input class="but3" type="submit" value="회원가입" id="confirm" />
        <input class="but4" type="reset" value="초기화" />
      </div>
      </form>
    </section>

    <!-- footer import -->
    <%@ include file="/WEB-INF/views/include/footer.jsp" %>
    <!-- end of footer import -->
  </body>
</html>
