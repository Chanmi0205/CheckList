package DB;

import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletContext;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.DriverManager;

public class JDBConnect {
	
 	public Connection conn;
	public Statement stmt;
	public PreparedStatement psmt;
	public ResultSet rs;
	  
	// 생성자3 test
	  public JDBConnect(ServletContext application) {
		  try { 
			  String driver = application.getInitParameter("OracleDriver"); 
			  String url = application.getInitParameter("OracleURL"); 
			  String ID = application.getInitParameter("OracleID"); 
			  String PW = application.getInitParameter("OraclePW");
			  Class.forName(driver); conn = DriverManager.getConnection(url, ID, PW);
	  		  System.out.println("DB 연결 완료(생성자 버전3)"); 
	  		  
		  } catch (Exception e) {
			  e.printStackTrace(); 
		  }	 
	  }

	public void close() {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();

			System.out.println("JDBC 자원 반납완료~");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}