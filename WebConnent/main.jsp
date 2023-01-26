<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CheckList main</title>

    <link rel="stylesheet" href="main.css">

</head>
<body> 

    <button class="menu">=</button>
 
    <h2 class="title">CheckList</h2>

	<%
		if( session.getAttribute("ID") == null ) {
	%>
	
    <button class="login" onClick="location.href='Login.jsp'">Login</button>
    <button class="signUp" onClick="location.href='signUp.jsp'">Sign up</button>

	<% 
		} else { 
	%>
		<p class="t1"> <%=session.getAttribute("name") %> 님 </p>
	<% 		
		}
	%>
	
    <hr class="width1">

    <div class="main">
    </div>

    <hr class="width2">
    
    <button class="help">?</button>
    <button class="create">+</button>

</body>
</html>