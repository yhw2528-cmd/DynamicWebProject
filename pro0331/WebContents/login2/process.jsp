<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="my.util.User" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
    String userId = request.getParameter("userId");
    String password = request.getParameter("password");
    String userName= request.getParameter("userName");
    String address=request.getParameter("address");
	User user= new User(userId,password,userName,address); //파라미터 생성자 이용
    if(userId.equals(password)){
        session.setAttribute("LOGIN", user);//user 객체 내에 모든 정보 들어있음
        session.setAttribute("LOGNAME", userName);
        session.setMaxInactiveInterval(10); //10초 동안 웹브라우저에서 가만히 있으면 로그아웃(session에서 값이 사라짐? 그리고 브라우저가 꺼지는 순간 역시도 사라짐)
        response.sendRedirect("home.jsp");
    } else {
%>
        <script>
            alert("아이디 패스워드가 일치하지 않습니다.");
            history.back();
        </script>
<%
    }
%>
</body>
</html>