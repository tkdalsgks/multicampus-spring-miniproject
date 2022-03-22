<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1" />
    <title>회원 가입 | 멀캠 커뮤니티</title>

    <!-- CSS -->
    <link rel="stylesheet" href="resources/css/styles.css" />

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

    <!-- JAVASCRIPT -->
    <script src="resources/js/userlist.js"></script>
    <script src="resources/js/sweetalert.min.js"></script>
    <script src="resources/js/jquery-3.6.0.min.js"></script>
  </head>

  <body>
    <!-- header import -->
    <c:import url="/WEB-INF/views/header.jsp"></c:import>
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

        for (var i = 0; i <= userlist.length; i++) {
          if (userlist[i] == $("#userId").val()) {
            idCk = true;
          }
        }
        if (idCk) {
          swal("등록이 불가능한 아이디입니다.", "", "error");
        } else {
          swal("등록 가능한 아이디입니다.", "", "success");
        }
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
              <input class="but1" type="button" value="중복확인" id="btn-idcheck" onclick="idCheck()" />
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
              <input class="but5" type="button" value="이메일인증" id="btn-emailcheck" onclick="emailCheck()" />
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
    <c:import url="/WEB-INF/views/footer.jsp"></c:import>
    <!-- end of header import -->
  </body>
</html>
