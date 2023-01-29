package core.beans;

public class UserLevel {
	// Properties
	private int Id;
	private String Level;
	private String Access_Levels;
	
	
	// Getter Methods
	
	public int getId() {
		return this.Id;
	}
	
	public String getLevel() {
		return this.Level;
	}
	
	public String getAccess_Levels() {
		return this.Access_Levels;
	}
	
	
	// Setter Methods
	public void setId(int Id) {
		this.Id = Id;
	}

	public void setLevel(String Level) {
		this.Level = Level;
	}

	public void setAccess_Levels(String Access_Levels) {
		this.Access_Levels = Access_Levels;
	}

	
	
	

}
