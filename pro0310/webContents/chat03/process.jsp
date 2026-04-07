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
	Enumeration<String> paramNames = request.getParameterNames();

	while(paramNames.hasMoreElements()){
    	String paramName = paramNames.nextElement();
    	out.print(paramNames+"<br>");
}
%>
</body>
</html>

