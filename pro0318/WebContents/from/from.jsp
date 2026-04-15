<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
from.jsp에서 출력된 부분입니다:<br>
<%
	request.setCharacterEncoding("utf-8");
	String userName=request.getParameter("userName");
	String userId=request.getParameter("userId");
	request.setAttribute("userName", "크리스탈");
	request.setAttribute("userId","lsj love");
	
%>
<jsp:forward page="/to/to.jsp"/>
<%--forward는 브라우저가 새로 요청하는 게 아니라
서버 내부에서 다른 JSP로 넘겨서 실행하기 때문에
브라우저에서는 여전히 from.jsp를 요청한 것처럼 보인다.
그리고 forward가 실행되면 이전 출력은 사라지고
to.jsp의 결과만 화면에 표시된다.--%>
</body>
</html>