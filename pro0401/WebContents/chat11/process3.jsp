<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@  page import="my.info.Student" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String studName=request.getParameter("studName");
	String sutdId=request.getParameter("studId");
	String age=request.getParameter("age");
	String depart=request.getParameter("depart");
%>
<jsp:useBean id="stud" class="my.info.Student" scope="session"/> 
<jsp:setProperty name="stud" property="*"/>	 <%--여러 줄로 받을 필요없이 한 번에 다 받는 코드 --%>
	
학생이름:<%= stud.getStudName() %><br>
아이디:<%= stud.getStudId() %><br>
나이:<%= stud.getAge() %><br>
학과:<%= stud.getDepart() %><br>
취미:
<%
	for(String hobby:stud.getHobby()){
		out.print(hobby+",");
	}
%>
</body>
</html>