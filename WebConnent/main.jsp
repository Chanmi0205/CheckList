<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DB.MemberDAO" %>
<%@ page import="DB.MemberDTO" %>
<%@ page import="DB.MemoDAO" %>
<%@ page import="DB.MemoDTO" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%	
		Date nowTime = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
<!DOCTYPE html>	
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>memo</title>

    <link rel="stylesheet" href="main.css">
</head>
<body>	
    
    <div class="A">
	    <p class="memo">Memo</p>
		
	    <hr class="hr1">
	    <p class="date"><%=sf.format(nowTime)%></p>
	    <hr class="hr2">
	
		<%	
			if( session.getAttribute("ID") == null ) {
	
		%>
		
	    <a href="Login.jsp" class="login">login</a>
	    <p class="t1">|</p>
	    <a href="signUp.jsp" class="signUp">sign up</a>
    
    
    <%
		} else {

			MemberDAO dao = new MemberDAO(application);
			MemberDTO dto = dao.call(session.getAttribute("ID").toString());
			dao.close();
	%>
	
	<p class="name"> <%=dto.getName()%>님 </p>
    </div>

    <div class="main">
	<% 
		MemoDAO dao2 = new MemoDAO(application);
		int count = dao2.count(session.getAttribute("ID").toString());
		
		int num[] = dao2.Num(session.getAttribute("ID").toString(), count);
		
		if( count != 0 && num!=null ) {
			for(int i=0; i<num.length; i++) { 
				MemoDTO dto2 = dao2.call(session.getAttribute("ID").toString(), (int)num[i]);
	%>
	        <div class="text">
	            <p class="time"><%=dto2.getPostdate()%></p>
	            <p class="t3">|</p>
	            <p class="memoText"><%=dto2.getMemo()%></p><button onclick="location.href='Memo.jsp?num=<%=num[i]%>';" class="MemoReset">R</button>
	            <p class="t4">|</p>
	            <button onclick="location.href='MemoDelete.jsp?num=<%=num[i]%>';" class="memoDelete">X</button>
	        </div>    
		<% } %>
		<% }  dao.close(); dao2.close();  } %>
		
    </div>
    	
    <div class="B">
	    <hr class="hr3">
	    <a href="EveryMemo.jsp" class="EveryMemo">Every Memo</a>
	    <p class="t5">|</p>
	    <a href="change.jsp" class="change">change</a>
	    <p class="t6">|</p>
	    <a href="delete.jsp" class="delete">delete</a>
	
	    <button class="create" onclick="location.href='Memo.jsp?num=0'">+</button>
	
	    <div class="advertisement">광고</div>
    </div>
</body>
</html>