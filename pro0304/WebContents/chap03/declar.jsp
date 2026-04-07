<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%! //이거는 메서드(함수)를 선언하는 것
	public int sum(int a, int b){
		int sum=a+b;
		return sum;
	}
	public int minus(int a, int b){
		int min=a-b;
		return min;
}
	public int multiply(int a, int b){
		int mul=a*b;
		return mul;
}
	public int divide(int a, int b){
		int d=a/b;
		return d;          /// 굳이 int 초기화 안 하고 바로 return 하는 방법도 있다
}
%>
10와 15의 합은 <%= sum(10,15) %><br>
10빼기 15는 <%= minus(10,15) %><br>
10와 15의 곱은 <%= multiply(10,15) %><br>
10 나누기 15는 <%=  divide(10,15) %><br>
</body>
</html>