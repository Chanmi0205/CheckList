<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="DB.MemberDAO" %>
<%@ page import="DB.MemberDTO" %>
    
<%
	String ID = session.getAttribute("ID").toString();
	String IDS = request.getParameter("IDS");

	MemberDAO dao = new MemberDAO(application);
	
	int result = dao.IDChange(IDS, ID);
   	dao.close();

	if(result==1) {		
   		session.setAttribute("ID", IDS);
   		System.out.println("ID 변경 완료");	
   		response.sendRedirect("main.jsp");
	} else {	
	      request.setAttribute("changeErrMsg", "중복된 ID입니다.");
	      request.getRequestDispatcher("change.jsp").forward(request, response);
	}
	

%>