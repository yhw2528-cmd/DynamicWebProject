<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
page 학생 이름:<%= (String) pageContext.getAttribute("studName") %><br>
page 성적:<%= (String) pageContext.getAttribute("score") %><br>
department 성적:<%= (String) pageContext.getAttribute("department") %><br>
<br>
request 학생 이름:<%= (String) request.getAttribute("studName") %><br>
request 성적:<%= (String) request.getAttribute("score") %><br>
department 성적:<%= (String) request.getAttribute("department") %><br>
<br>
session 학생 이름:<%= (String) session.getAttribute("studName") %><br>
session 성적:<%= (String) session.getAttribute("score") %><br>
department 성적:<%= (String) session.getAttribute("department") %><br>
<br>
application 학생 이름:<%= (String) application.getAttribute("studName") %><br>
application 성적:<%= (String) application.getAttribute("score") %><br>
department 성적:<%= (String) application.getAttribute("department") %><br>
<br>
</body>
</html>