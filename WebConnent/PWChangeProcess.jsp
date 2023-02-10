<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="DB.MemberDAO" %>
<%@ page import="DB.MemberDTO" %>

<%
	String ID = session.getAttribute("ID").toString();
	String PW = request.getParameter("PW");
	
	MemberDAO dao = new MemberDAO(application);
	
	int result = dao.PWChange(PW, ID);
	
	if(result==1) {		
   		System.out.println("PW 변경 완료");
   		response.sendRedirect("main.jsp");
	} else {
	      request.setAttribute("changeErrMsg", "성공적으로 변경하지 못하였습니다.");
	      request.getRequestDispatcher("change.jsp").forward(request, response);
	}
	dao.close();
%>