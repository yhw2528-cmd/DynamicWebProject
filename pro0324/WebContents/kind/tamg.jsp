<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%= request.getParameter("customer") %>님, 
탕수육을 <%= request.getParameter("amount")%> 그릇 주문하셨군요.<br><br>
품질은 <%= (String)request.getAttribute("QUAL") %>로 신청하셨습니다.<br>
맛은 <%=(String)request.getAttribute("tasty") %>로 신청하셨네요  맛있게 드세요 <br><hr><br>
<img alt="탕수육" src="/pro0324/images/tange.jpg" width="100" height="100">
</body>
</html>