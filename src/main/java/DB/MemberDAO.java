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
	
	public void deleteID(String ID) {
		
		int result = 0;
		String sql = "DELETE FROM member WHERE ID=?";
		
		try {
			 psmt = conn.prepareStatement(sql);
			 psmt.setString(1, ID);
			 result = psmt.executeUpdate();
			 
			 if (result == 1) {
				 System.out.println("계정 삭제 완료");
			 }
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int IDChange(String IDS, String ID) {
		int result = 0;
		String sql = "UPDATE member SET ID=? WHERE ID=?";
		
		try {
			 psmt = conn.prepareStatement(sql);
			 psmt.setString(1, IDS);
			 psmt.setString(2, ID);
			 result = psmt.executeUpdate();
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int nameChange(String name, String ID) {
		int result = 0;
		String sql = "UPDATE member SET name=? WHERE ID=?";
		try {
			 psmt = conn.prepareStatement(sql);
			 psmt.setString(1, name);
			 psmt.setString(2, ID);
			 result = psmt.executeUpdate();
			 
			 if (result == 1) {
				 System.out.println("name 변경 완료");
			 }
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int PWChange(String PW, String ID) {
		int result = 0;
		String sql = "UPDATE member SET PW=? WHERE ID=?";
		try {
			 psmt = conn.prepareStatement(sql);
			 psmt.setString(1, PW);
			 psmt.setString(2, ID);
			 result = psmt.executeUpdate();
			 
			 if (result == 1) {
				 System.out.println("PW 변경 완료");
			 }
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public MemberDTO call(String ID) {
		
		MemberDTO dto = new MemberDTO();
		
		String sql = "SELECT * FROM member WHERE ID=?";

		try {			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, ID);
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