<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이름을 입력하세요.<br>
<hr>
<form action="process.jsp" method="post"> 
<%-- form 태그 안에 있는 것들이 전부 파라미터 값으로 입력 --%>
이름: <input type="text" name="userName" size="10">
주소: <input type="text" name="address" size="10">
나이: <input type="text" name="userAge" size="10"><br><br><hr>
취미:<input type="checkbox" name="hobby" value="등산"> 등산 <%--value는 선택했을 때 서버로 보내는 실제 값 --%>
<input type="checkbox" name="hobby" value="수영">수영<input type="checkbox" name="hobby" value="독서">독서
<input type="checkbox" name="hobby" value="영화감상">영화감상 <%-- 체크박스로 표시한다, 그리고 취미가 여러개이므로 배열로 받는다. 또한 뒤에 등산 수영 독서 영황감상을 써야 제대로 체크박스 출력 --%><br><hr>
전공:<input type="radio" name="major" value="컴공">컴공
<input type="radio" name="major" value="메카]">메카
<input type="radio" name="major" value="기계">기계 <br><hr><%--라디오라 하나만 체크가능 체크박스는 여러개 가능 --%>
<input type="submit" value="입력"> <%--submit=모든 데이터 전송 밸류 입력은 그냥 입력 버튼 출력 --%>
</form>
</body>
</html>