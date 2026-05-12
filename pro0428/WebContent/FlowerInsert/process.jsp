<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.*"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.sql.*,java.util.*,my.model.*,my.dao.*,my.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MultipartRequest multi = new MultipartRequest
		(request, "C:\\Users\\yhw25\\eclipse-workspace\\pro0428\\WebContent\\images", 5*1024*1024, "utf-8", new DefaultFileRenamePolicy());
	String name=multi.getParameter("name");
	String origin=multi.getParameter("origin");
	int price=Integer.parseInt(multi.getParameter("price"));
	String image=multi.getFilesystemName("image");
	Flower flower=new Flower(0,name,origin,price,new java.util.Date(),image);
 	Connection conn=ConnectionProvider.getConnection();
 	try{
 		FlowerDao dao=new FlowerDao();
 		dao.insert(conn,flower);
 	}catch(SQLException e){
 		e.printStackTrace();
 	}finally{
 		JdbcUtil.close(conn);
 	}
 
 
 %>
 <%= name %>꽃을 등록하셨습니다. <br>
</body>
</html>