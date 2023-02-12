<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="DB.MemberDAO" %>
<%@ page import="DB.MemberDTO" %>

<% 
		String ID = request.getParameter("ID");
        String PW = request.getParameter("PW");
        String name = request.getParameter("name");
        
        MemberDAO dao = new MemberDAO(application);
        int result = dao.signUp(ID, PW, name);
        dao.close();
        if(result==0) {        	
        request.getRequestDispatcher("signUp.jsp?error=1").forward(request, response);
        } else {     
            session.setAttribute("ID", ID);
            response.sendRedirect("main.jsp");
        }

%>