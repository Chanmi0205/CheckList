<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DB.MemberDAO" %>
<%@ page import="DB.MemberDTO" %>
<%@ page import="DB.MemoDAO" %>
<%@ page import="DB.MemoDTO" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Every Memo</title>
    <link rel="stylesheet" href="EveryMemo.css">
</head>
<body>
    
    <div class="A">
    <p class="EveryMemo">Every Memo</p>
    <a href="main.jsp" class="member">member</a>

    <hr class="hr1">    
    </div>

    <div class="main">
    
	<% 
		MemoDAO dao = new MemoDAO(application);
		int count = dao.count2();
		int num2[] = dao.Num2(count);
		int i=0;
		
		if( count != 0 && num2!=null ) {
			for(; i<num2.length; i++) {
			
			MemoDTO dto2 = dao.call2((int)num2[i]);
			
	%>
	
        <div class="memo">  
            <p class="date"><%=dto2.getPostdate()%></p>
            <p class="t7">|</p>
            <p class="memoText"><%=dto2.getMemo()%></p>
            <p class="t8">|</p>
            <p class="name"><%=dto2.getID()%>님</p>
        </div>
		<% } } dao.close(); %>
    </div>

	<div class="B">
	    <hr class="hr2">
	</div>


    <div class="advertisement">광고</div>
	
</body>
</html>