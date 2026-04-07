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
	request.setCharacterEncoding("utf-8");
	String food=request.getParameter("food");
	String restpage=null;
	int price=Integer.parseInt(request.getParameter("price"));
	int tasty=Integer.parseInt(request.getParameter("tasty"));
	String quality="";
	String greade="";

	
	if(price>=100000){
		quality="고급";
	}
	else if(price>=50000 && price<100000){
		quality="중급";
	}
	else if(price>=10000 && price<50000){
		quality="하급";
	}
	request.setAttribute("QUAL",quality);//request 기본 객체 속성에 추가
	if(food.equals("탕수육")){
		restpage="/kind/tamg.jsp";
	}
	else if(food.equals("짜장면")){
		restpage="/kind/zza.jsp";
	}
	else if(food.equals("짬뽕")){
		restpage="/kind/bbong.jsp";
	}
	else if(food.equals("우동")){
		restpage="/kind/udong.jsp";
	}
	else{
		out.print("메뉴에 없는 것을 주문했습니다");
	}
	
	if(tasty ==4 || tasty==5){
		greade="진한 맛";
	}
	else if(tasty ==1 || tasty==2){
		greade="순한 맛";
	}
	else if(tasty ==3){
		greade="중간 맛";
	}
	
	request.setAttribute("tasty",greade);
%>
<jsp:forward page="<%= restpage %>" />

</body>
</html>