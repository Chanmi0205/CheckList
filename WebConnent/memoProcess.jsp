<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DB.MemoDAO" %>
<%@ page import="DB.MemoDTO" %>
<%	
	String ID = session.getAttribute("ID").toString();
	String memo = request.getParameter("memo");
	int num = Integer.parseInt(request.getParameter("num"));
	System.out.println(num);	
	
	MemoDAO dao = new MemoDAO(application);
	int result = 0;
	
	if(num==0) {
		result = dao.memo(ID, memo);
	} else {
		result = dao.memoR(memo, ID, num);
	}
	dao.close();
	
	if(result==1) {
   		response.sendRedirect("main.jsp");
	} else {
		System.out.println("error");
	}
%>