package DB;

public class MemoryDTO { 
	
	private String ID;
	private int key;
	private char chec;
	private String keyword;

	private String DT;
	private String S;
	private String E;
	
	private String text;
	private String memo;
	
	private char YN;

	public MemoryDTO() {}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public int getKey() {
		return key;
	}

	public void setKey(int key) {
		this.key = key;
	}

	public char getChec() {
		return chec;
	}

	public void setChec(char chec) {
		this.chec = chec;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getDT() {
		return DT;
	}

	public void setDT(String dT) {
		DT = dT;
	}

	public String getS() {
		return S;
	}

	public void setS(String s) {
		S = s;
	}

	public String getE() {
		return E;
	}

	public void setE(String e) {
		E = e;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}

	public char getYN() {
		return YN;
	}

	public void setYN(char yN) {
		YN = yN;
	}
	
}	
