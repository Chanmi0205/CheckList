package DB;

public class Test {

	public static void main(String[] args) {
		
		int num[] = {};
		
		num[0] = 1;
		
		try {
			
			for(int i=0; i<num.length; i++) {
				System.out.println(num[i]);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
}
