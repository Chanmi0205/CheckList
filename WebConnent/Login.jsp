<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CheckList Login</title> 

    <link rel="stylesheet" href="Login.css">
</head>
<body>

    <form action="LoginProcess.jsp" method="post" onsubmit="return vallidateForm(this)">
	
	    <div class="loginScreen">
	
	        <p class="loginText">Login</p>
	
	        <label for="ID" class="IDLabel">ID</label> <input type="text" class="ID" id="ID" placeholder="ID" name="ID">
	        <label for="pw" class="pwLabel">pw</label> <input type="password" class="pw" id="pw" placeholder="password" name="PW">
	
	        <input type="submit" class="Login" value="Login">
	
	    </div>
    
    </form>
    <p>
	<%= request.getAttribute("LoginErrMsg") == null ? " " : request.getAttribute("LoginErrMsg") %>
    </p>

</body>
</html>