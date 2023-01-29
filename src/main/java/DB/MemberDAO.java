package DB;

import javax.servlet.ServletContext;

public class MemberDAO extends JDBConnect {
	
	 public MemberDAO(ServletContext application) { super(application); }
	 
	
	public MemberDTO getMemberDTO(String ID, String PW) {
		
		MemberDTO dto = new MemberDTO();
		
		String sql = "SELECT * FROM member where ID=? AND PW=?";
		
		try {
			 psmt = conn.prepareStatement(sql);
			 psmt.setString(1, ID);
			 psmt.setString(2, PW);
			 rs = psmt.executeQuery();
			 
			 if(rs.next()) {
				 dto.setID(rs.getString("ID"));
				 dto.setPW(rs.getString("PW"));
				 dto.setName(rs.getString("name"));
			 }
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
		
	}
	
}	