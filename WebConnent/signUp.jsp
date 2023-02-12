<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CheckList sign up</title>

    <link rel="stylesheet" href="signUp.css">
</head>
<body>


	<form action="Register.jsp" method="post">
    
		   <div class="signUpScreen">
		
		       <p class="signUpText">sign up</p>
		       
		       <label for="ID" class="IDLabel">ID</label> <input type="text" class="ID" id="ID" name="ID" placeholder="ID" maxlength="15">
		
		       <label for="pw" class="pwLabel">pw</label> <input type="password" class="pw" id="pw" name="PW" placeholder="password" maxlength="30">
		   
		       <label for="name" class="name">name</label> <input type="text" class="name" id="name" name="name" placeholder="name" maxlength="15">
		
		       <input type="submit" class="signUp" value="sign up">
		
		   </div>
		   
		   <p>
		   <%
		      String error = request.getParameter("error");
		      if (error != null){
		        out.println("중복된 ID입니다.");
		      }
		   %>
		   </p>
		   
	</form>

</body>
</html>