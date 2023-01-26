package DB;

public class MemberDTO {
	
	private String ID;
	private String PW;
	private String name;
	
	public MemberDTO() {
		super();
	}
	
	public MemberDTO(String ID, String PW) {
		this.ID = ID;
		this.PW = PW;
	}

	public MemberDTO(String ID, String PW, String name) {
		this.ID = ID;
		this.PW = PW;
		this.name = name;
	}

	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getPW() {
		return PW;
	}

	public void setPW(String pW) {
		PW = pW;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "MemberDTO [ID=" + ID + ", PW=" + PW + ", name=" + name + "]";
	}

}
