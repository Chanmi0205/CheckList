<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="DB.MemberDAO" %>
<%@ page import="DB.MemberDTO" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>

	<%
		String ID = request.getParameter("ID");
    	String PW = request.getParameter("PW");
    	
    	MemberDAO dao = new MemberDAO(application);
		MemberDTO dto = dao.getMemberDTO(ID, PW);
		
		dao.close();
		
		if(dto.getID() != null) {
		      // 로그인 성공!!!!
		      session.setAttribute("ID", dto.getID());
		      response.sendRedirect("main.jsp");
		  } else {
		      // 로그인 실패 :(
		      request.setAttribute("LoginErrMsg", "아이디나 비밀번호를 다시 확인해주세요.");
		      request.getRequestDispatcher("Login.jsp").forward(request, response);
	   }
		
	%>
	
</body>
</html>