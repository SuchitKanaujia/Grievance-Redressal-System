package core.beans;

public class UserLevel {
	// Properties
	private int id;
	private String userLevel;
	private String accessPermissions;
	
	
	// Getter Methods
	
	public int getId() {
		return this.id;
	}
	
	public String getUserLevel() {
		return this.userLevel;
	}
	
	public String getAccessPermissions() {
		return this.accessPermissions;
	}
	
	
	// Setter Methods
	public void setId(int id) {
		this.id = id;
	}

	public void setUserLevel(String userLevel) {
		this.userLevel = userLevel;
	}

	public void setAccessPermissions(String accessPermissions) {
		this.accessPermissions = accessPermissions;
	}

	
	
	

}
