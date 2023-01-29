<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	    
<%@ page import="DB.JDBConnect" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

</head>
	<body>
	
	<% 
		String ID = request.getParameter("ID");
        String PW = request.getParameter("PW");
        String name = request.getParameter("name");
        
        JDBConnect jdbc = new JDBConnect(application);

        String sql1 = "SELECT * FROM member WHERE ID=?";
        
        PreparedStatement ps2 = jdbc.conn.prepareStatement(sql1);
        ps2.setString(1, ID);
        
        ResultSet r = ps2.executeQuery();
        
        String sql3 = "INSERT INTO member VALUES(?, ?, ?)";
                
        if(r.next()){
            // 중복 O
            // 중복된 ID입니다. 출력
            jdbc.close();
            request.getRequestDispatcher("Register.jsp?error=1").forward(request, response);
        }
        else{
            // 중복X
            // 회원가입 처리 & welcome.jsp로 이동 
			PreparedStatement ps = jdbc.conn.prepareStatement(sql3);
        	ps.setString(1, ID);
       	 	ps.setString(2, PW);
        	ps.setString(3, name);    
        	 
        	ps.executeUpdate();

           	jdbc.close();
	
           	session.setAttribute("ID", ID);
            session.setAttribute("name", name);
            response.sendRedirect("main.jsp");
        }
    %>
	
</body>
</html>
