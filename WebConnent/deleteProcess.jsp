<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
        
<%@ page import="DB.MemberDAO" %>
<%@ page import="DB.MemberDTO" %>

<%
	String ID = session.getAttribute("ID").toString();

	MemberDAO dao = new MemberDAO(application);
	dao.deleteID(ID);
	
	response.sendRedirect("signUp.jsp");

	
	/*    // 로그인 실패 :(
	      request.setAttribute("LoginErrMsg", "아이디나 비밀번호를 다시 확인해주세요.");
	      request.getRequestDispatcher("Login.jsp").forward(request, response);
	 */

	dao.close();
%>