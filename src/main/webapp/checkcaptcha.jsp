<%@ page contentType="text/html;charset=utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page import="java.net.HttpURLConnection" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.io.DataOutputStream" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.io.InputStreamReader" %>
<%@ page import="org.json.simple.parser.JSONParser" %>
<%@ page import="org.json.simple.JSONObject" %>


<%
    String gCaptcha = request.getParameter("g-recaptcha");
    String secretKey = "6LfMlQAVAAAAAMOYijofRUQp6kBWo4kjLAI4PvGH";
    String verifyURL = "https://www.google.com/recaptcha/api/siteverify";
    String params = "secret=" + secretKey + "&response=" + gCaptcha;

    String success = "";
    String errorcode = "";
    String hostname = "";
    String score = "";

    try {
        String jsonData = "";

        // 클라이언트에서 넘어온 응답키를 해독하기 위해
        // 구글 recaptcha 검증 사이트 URL에 접속할때 사용할
        // URLConnerction 객체 생성
        URL url = new URL(verifyURL);
        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
        conn.setRequestMethod("POST");
        conn.setDoInput(true);
        conn.setDoOutput(true);

        // 구글 recaptcha 검증 사이트 URL에 접속한 후
        // POST 방식으로 검증 데이터와 비밀키를 전송함
        DataOutputStream dos = new DataOutputStream(conn.getOutputStream());
        dos.writeBytes(params);
        dos.flush();
        dos.close();

        // 비밀키와 응답데이터를 전송하고
        // 넘어온 결과를 ㅂ다아서 JSON형식으로
        // StringBuffer 변수에 저장
        InputStream is = conn.getInputStream();
        BufferedReader br = new BufferedReader(new InputStreamReader(is, "UTF-8"));
        StringBuffer sb = new StringBuffer();
        while ((jsonData = br.readLine()) != null){
            sb.append(jsonData);
        }

        // JSON 형식으로 저장된 데이터에서 검ㅈ으에 필요한 결과값 추출
        JSONParser parser = new JSONParser();
        Object json = parser.parse(sb.toString());
        JSONObject jsonObj = (JSONObject) json;

        // 추출한 결과 출력
        // 단, score는 recaptcha v3 전용 결과값
        success = String.valueOf(jsonObj.get("success"));
        errorcode = String.valueOf(jsonObj.get("error-codes"));
        hostname = String.valueOf(jsonObj.get("hostname"));

        score = String.valueOf(jsonObj.get("score"));


    } catch (Exception ex){
        ex.printStackTrace();
    }
%>

<html>

<head>
    <title>captcha 결과 확인</title>
</head>

<body>
    <h1>캡챠확인</h1>
    <h1>검증키 :  <%=gCaptcha%></h1>
    <h1>검증확인주소 :  <%=verifyURL%></h1>
    <h1>검증매개변수 :  <%=params%></h1>
    <hr>
    <h3>성공여부 :  <%=success%></h3>
    <h3>호스트명 :  <%=hostname%></h3>
    <h3>실패시 오류내용 :  <%=errorcode%></h3>
    <h3>행동점수 :  <%=score%></h3>
</body>
</html>
