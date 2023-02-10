<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Change</title>

    <link rel="stylesheet" href="change.css">
</head>
<body>
    
    <p class="title">Setting</p>
    <p class="name"><%=session.getAttribute("name") %> 님</p>
    
    <hr class="hr1">
    
    <form action="IDChangeProcess.jsp" method="post" class="f1">
    	<input type="text" class="IDInput" name="IDS" placeholder="변경할 ID을/를 입력하세요." maxlength="15">
	    <input type="submit" class="IDS" id="" value="ID 변경">
    </form>
    
    <form action="nameChangeProcess.jsp" method="post" class="f2">
    <input type="text" class="nameInput" name="name" placeholder="변경할 name을/를 입력하세요." maxlength="15">
    <input type="submit" class="nameS" id="" value="name 변경">
    </form>
    
    <form action="PWChangeProcess.jsp" method="post" class="f3">    
	    <input type="text" class="PW" name="PW" placeholder="변경할 password을/를 입력하세요." maxlength="30">
	    <input type="submit" class="PWS" id="" value="password 변경">
    </form>

    <hr class="hr2">
	<%= request.getAttribute("changeErrMsg") == null ? " " : request.getAttribute("changeErrMsg") %>

</body>
</html>