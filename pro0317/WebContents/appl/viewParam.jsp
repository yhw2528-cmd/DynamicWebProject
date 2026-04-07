<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String manager=application.getInitParameter("managerName");	
	String numberUser=application.getInitParameter("numUser");	
	String path=application.getRealPath("appl");	
%>
매니저 이름:<%= manager %><br>
사용자 수:<%= numberUser %><br>
appl 실제 경로:<%= path %><br>
</body>
</html>