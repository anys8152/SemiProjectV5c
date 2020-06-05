<%@ page contentType="text/html;charset=utf-8" language="java" %>

<html>
<head>
    <title>구글 리캡챠</title>
    <script src='https://www.google.com/recaptcha/api.js?'></script>
    <script>
        function onSubmit() {
            if (grecaptcha.getResponse() == ""){
                alert("자동가입방지 확인 필요!!");
                return false;
            } else {
                alert("자동가입방지 성고 ㅇ확인!!");
                return true;
            }
        }
    </script>
</head>
<body>
<h1>구글 reCaptcha : checkbox</h1>
<%
    if(Boolean.TRUE.equals(request.getAttribute("success"))){ %>
<div class="status-message">자동가입방지 클릭 성공!</div>
<% } else if(Boolean.FALSE.equals(request.getAttribute("success"))){ %>
<div class="status-message">자동가입방지 확인 필요!</div>
<% } %>
<form method="post" id="loginfrm" action="index.jsp" onsubmit="return onSubmit()">
    <div>아이디 : <input type="text" id="userid" name="userid"></div>
    <div>비밀번호 : <input type="password" id="passwd" name="passwd"></div>
    <div class="g-recaptcha"
        data-sitekey="6LfMlQAVAAAAABNT8kx3U6cLqqmZo8hgXCRixEdT">입력완료</div>
    <button type="submit">로그인하기</button>
</form>
</body>
</html>
<!--
    자동가입방지 captcha
    어떤 사용자가 사람인지 컴퓨터 프로그램인지 구별하기 위해 사용하는 프로그램
    사람만이 구별할 수 있고 컴퓨터는 구별하기 힘들도록 의도적으로 비틀거나
    덧칠한 그림을 보여주고 그것이 무엇인지 물어보는 방법을 주로 사용
    튜링 테스트르 시초로 해서 만들어 졌기 때문에 리버스 튜링 테스트라고도 함

    checkbox recaptcha
    사용자가 captcha를 클릭해야만 정상적인 작업을 허용하는 형태
--!>