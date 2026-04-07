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
	String pageAtt=(String)pageContext.getAttribute("pageAtt");//(string)같은 걸 캐스트 연산자라고 한다
	String requestAtt=(String)request.getAttribute("requestAtt");//setAttrib.jsp에서 정의한 걸 가져온다
	String sessionAtt=(String)session.getAttribute("sessionAtt");
	String applAtt=(String)application.getAttribute("applicationAtt");
	
%>
pageAtt=<%= pageAtt %><br>
requestAtt=<%= requestAtt %><br>
sessionAtt=<%= sessionAtt %><br>
applAtt=<%= applAtt %><br>

</body>
</html>