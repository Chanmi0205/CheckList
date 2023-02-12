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
		
    	int num = Integer.parseInt(request.getParameter("num"));
		MemoDAO dao = new MemoDAO(application);
		MemoDTO dto = dao.call2(num);
		MemberDAO dao2 = new MemberDAO(application);
		MemberDTO dto2 = dao2.call(session.getAttribute("ID").toString());
		dao.close();    	
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>memo</title>
    <link rel="stylesheet" href="memo.css">
</head>
<body>
    <%
	if (session.getAttribute("ID") != null) {		
	System.out.println(num);	
	%>
	    <form action="memoProcess.jsp">
	    <P class="name"><%=dto2.getName()%>님</P>
		    <p class="memoText">Memo</p>
		
		    <hr class="hr1">
		    
		    <% if(num==0) { %>
		    <input name="memo" id="" class="input" value="">
		    <input name="num" value="0" style="display: none">
		    <% } else { %>
		    <input name="memo" id="" class="input" value="<%=dto.getMemo()%>">
		    <input name="num" value="<%=num%>" style="display: none">
		    <% } %>
		    <hr class="hr3">
		 
		
		    <button type="submit" class="create">메모 생성 및 편집</button>
	    </form>
    <% } %>

</body>
</html>