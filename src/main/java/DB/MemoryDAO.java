package DB;

import javax.servlet.ServletContext;

public class MemoryDAO extends JDBConnect {

	public MemoryDAO(ServletContext application) {
		super(application);
	}
	
	public int inserWrite(MemoryDTO dto) {
		
		int result=0;

		try {
			
			String sql = "INSERT INTO memory(ID, key, chec, keyword, DT, S, E, text) "
					+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
		
	}
}
