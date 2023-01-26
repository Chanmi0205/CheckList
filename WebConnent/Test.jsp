<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="DB.JDBConnect" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC 테스트</title>
</head>


	<% 
		JDBConnect jdbc3 = new JDBConnect(application);
		jdbc3.close();   
		
	%>

</body>
</html>