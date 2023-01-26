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
    	
    	String oracledriver = application.getInitParameter("OracleDriver");
    	String oracleUrl = application.getInitParameter("OracleURL");
    	String oracleID = application.getInitParameter("OracleID");
    	String oraclePW = application.getInitParameter("OraclePW");

    	MemberDAO dao = new MemberDAO(application);
		MemberDTO dto = dao.getMemberDTO(ID, PW);
		
		dao.close();
		
		if(dto.getID() != null) {
		      // 로그인 성공!!!!
		      session.setAttribute("ID", dto.getID());
		      session.setAttribute("name", dto.getName());
		      response.sendRedirect("main.jsp");
		  } else {
		      // 로그인 실패 :(
		      request.setAttribute("LoginErrMsg", "아이디나 비밀번호를 다시 확인해주세요.");
		      request.getRequestDispatcher("main.jsp").forward(request, response);
	   }
		
	%>
	
</body>
</html>