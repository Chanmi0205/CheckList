<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DB.MemoDAO" %>
<%@ page import="DB.MemoDTO" %>
<%
	int num = Integer.parseInt(request.getParameter("num"));

	System.out.println(num);
	
	MemoDAO dao = new MemoDAO(application);
	int result = dao.memoD(num); 
	
	if(result==1) {
   		response.sendRedirect("main.jsp");
	} else {
		System.out.println("ERROR");
	}
%>