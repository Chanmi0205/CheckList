package DB;

import javax.servlet.ServletContext;

public class MemoDAO extends JDBConnect {

	public MemoDAO(ServletContext application) {
		super(application);
	}
	
	public int memo(String ID, String memo) {
		int result = 0;
		
		String sql = "INSERT INTO memo(ID, NUM, postdate, memo) VALUES(?, (SELECT NVL(MAX(NUM), 0) + 1 FROM memo), sysdate, ?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, ID);
			psmt.setString(2, memo);
			result = psmt.executeUpdate();
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}	

	public int[] Num(String ID, int count) {
		
		String sql = "SELECT GREATEST(NUM) FROM memo WHERE ID=?";	
		String sql2 = "SELECT * FROM memo WHERE NUM=?";
		int num[] = new int[count];
		
		try {			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, ID);
			rs = psmt.executeQuery();
			
			if(rs.next()) {					
				for(int i=0; i<num.length; i++) {	
					num[i] = rs.getInt("GREATEST(NUM)");
					rs.next();
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return num;
	}
	
	public int count(String ID) {
		
		String sql = "SELECT COUNT(*) FROM memo WHERE ID=?";	
		int count=0;
			
		try {			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, ID);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				count = rs.getInt("COUNT(*)");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
	
	public int count2() {
		
		String sql = "SELECT COUNT(*) FROM memo";	
		int num=0;
			
		try {			
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				num = rs.getInt("COUNT(*)");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return num;
	}
	

	public MemoDTO call(String ID, int num) {
		
		System.out.println(ID + ", " + num);
		
		MemoDTO dto = new MemoDTO();
		
		String sql = "SELECT * FROM memo WHERE ID=? AND NUM=?";

		try {			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, ID);
			psmt.setInt(2, num);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				 dto.setID(rs.getString("ID"));
				 dto.setMemo(rs.getString("MEMO"));
				 dto.setPostdate(rs.getDate("POSTDATE"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	

	
	public int[] Num2(int count) {
		
		int num[] = new int[count];
		String sql2 = "SELECT GREATEST(NUM) FROM memo";
		
		try {			
			psmt = conn.prepareStatement(sql2);
			rs = psmt.executeQuery();
			
			if(rs.next()) {					
				for(int i=0; i<num.length; i++) {	
					num[i] = rs.getInt("GREATEST(NUM)");
					rs.next();	
				}
			}
		} catch (Exception e) {
			e.printStackTrace();	
		}
		return num;
	}
	
	public MemoDTO call2(int num) {
		
		MemoDTO dto = new MemoDTO();
		
		String sql = "SELECT * FROM memo WHERE NUM=?";

		try {			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, num);
			rs = psmt.executeQuery();

			
			if(rs.next()) {
				 dto.setID(rs.getString("ID"));
				 dto.setMemo(rs.getString("MEMO"));
				 dto.setPostdate(rs.getDate("POSTDATE"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	

	public int memoD(int num) {
		
		int result = 0;
		
		String sql = "DELETE memo WHERE NUM=?";

		try {			
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, num);
			result = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public int memoR(String memo, String ID, int num) {
		
		int result = 0;
		
		String sql = "UPDATE memo SET memo=? WHERE ID=? AND num=?";

		try {			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, memo);
			psmt.setString(2, ID);
			psmt.setInt(3, num);
			result = psmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
}
