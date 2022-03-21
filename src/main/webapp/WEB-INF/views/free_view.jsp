<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1" />
    <title>자유게시판 | 멀캠 커뮤니티</title>

    <!-- CSS -->
    <link rel="stylesheet" href="resources/css/styles.css" />

    <!-- JAVASCRIPT -->
    <script src="resources/js/jquery-3.6.0.min.js"></script>
  </head>

  <body>
    <!-- header import -->
    <c:import url="/WEB-INF/views/header.jsp"></c:import>
    <!-- end of header import -->

    <div>
      <br />
      <br />
    </div>
    <table style="text-align: center; border: 1px solid #dddddd; word-break: break-all; word-wrap: break-word">
      <thead>
        <th colspan="6" style="background-color: #eeeeee; text-align: center; height: 3vw;">글</th>
      </thead>
      <tbody>
        <tr>
          <td style="width: 20%; border: 1px solid #949494">작성자</td>
          <td colspan="2" style="border: 1px solid #949494">윤성일</td>

          <td style="width: 20%; border: 1px solid #949494">작성일자</td>
          <td colspan="2" style="border: 1px solid #949494">
            <script>
              let today = new Date();

              document.write(today.toLocaleString());
            </script>
          </td>
        </tr>

        <tr>
          <td>글 내용</td>
          <td colspan="4" style="height: 600px; text-align: left; word-break: break-all; word-wrap: break-word; vertical-align: top"><br />안녕하세요</td>
        </tr>
      </tbody>
    </table>
    <br />

    <br />
    <div style="text-align: center">
      <button style="display: inline-block; background-color: rgb(230, 150, 80); border-color: rgb(230, 150, 80); width: 80px; height: 40px" onclick="location.href='free' ">목록</button>
      <button id="btn1" style="display: inline-block; background-color: rgb(230, 150, 80); border-color: rgb(230, 150, 80); width: 80px; height: 40px" onclick="location.href='freealter'">
        글 수정
      </button>
      <button id="btn2" style="display: inline-block; background-color: rgb(230, 150, 80); border-color: rgb(230, 150, 80); width: 80px; height: 40px" onclick="location.href='free'">글 삭제</button>
    </div>
    <script>
      document.getElementById("btn2").addEventListener("click", 삭제);

      function 삭제() {
        alert("삭제되었습니다.");
      }
    </script>
    <div>
      <br />
      <br />
    </div>

    <!-- footer import -->
    <c:import url="/WEB-INF/views/footer.jsp"></c:import>
    <!-- end of header import -->
  </body>
</html>
