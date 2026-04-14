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

<%
	Connection conn=ConnectionProvider.getConnection();

	List<Book> list=null;
	try{
		BookDao dao=new BookDao();//dao 객체 생성
		list=dao.selectList(conn);
	}catch(SQLException e){}
%>
<table border="1">
<tr><th>아이디</th><th>도서명</th><th>저자</th><th>가격</th><th>출판일</th><th>이미지</th>
<th>아이디</th>
</tr>
<%
	for(Book book:list){
		
%>
<tr>
<td><%= book.getBookId() %></td> <td><%= book.getBookName() %></td>
<td><%= book.getAuthor() %></td> <td><%= book.getPrice() %></td>
<td><%= book.getPublishDate() %></td> 
<td>
<a href="detail.jsp?bookId=<%=book.getBookId() %>">
<img src="/pro0414/images/<%= book.getBookImage() %>" width="70" height="100">
</a>
    
</td>
<td><%= book.getBookId() %></td> 
</tr>

<%} %>
 </table>
</body>
</html>