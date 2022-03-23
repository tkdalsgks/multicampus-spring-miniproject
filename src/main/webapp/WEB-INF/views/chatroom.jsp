<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1" />
    <title>채팅방 | 멀캠 커뮤니티</title>

    <!-- CSS -->
    <link rel="stylesheet" href="resources/css/styles.css" />

    <!-- JAVASCRIPT -->
    <script src="resources/js/jquery-3.6.0.min.js"></script>
  </head>

  <body>
    <!-- header import -->
    <c:import url="/WEB-INF/views/header.jsp"></c:import>
    <!-- end of header import -->

    <section>
      <div class="chatform">
        <div class="chat_wrap">
          <div class="header">채팅방</div>
          <div class="chat">
            <ul>
              <!-- 동적 생성 -->
            </ul>
          </div>
          <div class="input-div">
            <textarea placeholder="여기에 메세지를 작성하세요."></textarea>
          </div>

          <!-- format -->
          <div class="chat format">
            <ul>
              <li>
                <div class="sender">
                  <span></span>
                </div>
                <div class="message">
                  <span></span>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- JAVASCRIPT -->
    <script src="resources/js/chatroom.js"></script>

    <!-- footer import -->
    <c:import url="/WEB-INF/views/footer.jsp"></c:import>
    <!-- end of header import -->
  </body>
</html>
