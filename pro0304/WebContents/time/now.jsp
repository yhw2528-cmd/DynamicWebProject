<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	 Date now = new Date(); //자바 클래스의 객체 선언 <% 안에 있는 거는 자바 문법을 사용 현재 jsp 자바 서버 파일로 코드를 짜고 있기 때문 여기 이외에 쓰는 거는 모두 출력
%>

현재 시각: <%= now  %> <%-- 여기서 =는 변수를 쓰겠다라는 것 스크립트 부분 --%>
</body>
</html>