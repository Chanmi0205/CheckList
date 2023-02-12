<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="DB.MemberDAO" %>
<%@ page import="DB.MemberDTO" %>
<%

	MemberDAO dao = new MemberDAO(application);
	MemberDTO dto = dao.call(session.getAttribute("ID").toString());
	dao.close();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>delete</title>

    <link rel="stylesheet" href="delete.css">
</head>
<body>

    <p class="title">Setting</p>
    <p class="name"><%=dto.getName()%>님</p>
    
    <hr class="hr1">
    
    <p class="deleteText">계정을 삭제하시겠습니까?</p>
    <p class="warning">% 경고 % : 입력하신 데이터를 복구할 수 없으며 계정 또한 복구할 수 없습니다.</p>
    <button class="no"  onclick="location.href='main.jsp'">삭제 취소</button>
    <button class="yes" onclick="location.href='deleteProcess.jsp'">계정 삭제</button>

    <hr class="hr2">
    
    
	<%= request.getAttribute("deleteErrMsg") == null ? " " : request.getAttribute("LoginErrMsg") %>
    
    
</body>
</html>