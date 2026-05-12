<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	int flowerId=Integer.parseInt(request.getParameter("flowerId"));
    Flower flower = null;
    Connection conn = ConnectionProvider.getConnection();
    try {
        FlowerDao dao = new FlowerDao();
        flower = dao.selectById(conn,flowerId);
    } catch(SQLException e) {}
%>
<c:set var="flower" value="<%= flower %>"/>
<c:if test="${flower != null }">
아이디:${flower.flowerId }<br>
꽃이름:${flower.name }<br>
원산지:${flower.origin }<br>
가격:${flower.price }<br>
등록일:<fmt:formatDate value="${flower.registerDate }" pattern="yyyy년 MM월 dd일"/><br>
<img src="../images/${flower.image }" width="350" height="500"><br>

</c:if>
<a href="catalog.jsp">카탈로그 보기</a>
</body>
</html>