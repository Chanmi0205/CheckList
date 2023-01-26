<%@ page language="java" contentType="text/html; charset=UTf-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션활용 로그인</title>
</head>
<body>
	<h2>로그인 페이지</h2>
	
	<%= request.getAttribute("LoginErrMsg") == null ? " " : request.getAttribute("LoginErrMsg") %>
	
	<%
		if( session.getAttribute("ID") == null ) {
	%>
	
	<form action="LoginProcress.jsp" method="post" onsubmit="return vallidateForm(this)">
		아이디 : <input type="text" name="ID"> <br/>
		패스워드 : <input type="password" name="PW"> <br/>
		<input type="submit" value="로그인">
	</form>
	
	<% 
		} else { 
	%>
		<%=session.getAttribute("name") %> 회원님, 환경합니다! 
		
	<% 		
		}
	%>
	
</body>
</html>