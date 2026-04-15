<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String name= request.getParameter("userName");
	String address= request.getParameter("address");
	int userAge=Integer.parseInt( request.getParameter("userAge"));
	String[] hobbies=request.getParameterValues("hobby"); // 배열로 받음
	String major= request.getParameter("major");

%>
사용자 이름은:<%= name %><br>
사용자 이름은:<%= address %><br>
사용자 이름은:<%= userAge %><br>
<%
	if (userAge <=20){
		out.print("당신은 청년입니다.");
	
	}
	else if(userAge<= 40 && userAge>20){
		out.print("당신은 중년입니다");
	}
	else {
		out.print("당신은 노인입니다");
	}
	out.print("<br><br> 사용자 취미");
	/*for (int i=0;i<hobbies.length;i++){ //배열로 출력을 위해서 for문으로 받음
		 out.print("사용자의 취미 " + i + " : " + hobbies[i] + "<br>");
		 
	}*/
	
	for(String hobby:hobbies)out.print(hobby+";");
%>
<br>사용자 전공:<%=major %> <br>
<% 
	Enumeration<String> paramNames = request.getParameterNames();// 모든 이름들을 가져옴
	//Enumeration=데이터를 하나씩 꺼내기 위한 반복 도구(하나씩 꺼내는 함수)
	while(paramNames.hasMoreElements()){//hasMoreElements 더 꺼낼 게 남아있는지 확인
    	String paramName = paramNames.nextElement(); //nextElement 다음 꺼 하나 꺼냄
    	out.print(paramName+"<br>");
}
%>
</body>
</html>

