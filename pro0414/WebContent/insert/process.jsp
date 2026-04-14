<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import ="java.sql.*, java.util.*,my.dao.*,my.util.*,my.model.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

%>
<jsp:useBean id="book" class="my.model.Book"/>
<jsp:setProperty name="book" property="*"/>
<%
	Connection conn=ConnectionProvider.getConnection();

	book.setPublishDate(new java.util.Date());
	try{
		BookDao dao=new BookDao();//dao 객체 생성
		dao.insert(conn,book);
	}catch(SQLException e){}
%>
도서 정보 입력이 끝났습니다.
</body>
</html>