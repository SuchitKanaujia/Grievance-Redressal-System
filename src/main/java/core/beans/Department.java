package core.beans;

public class Department {
	// Properties
	private String Id;
	private String Name;
	private String Description;
	private String Dean_Id;
	
	
	// Getter Methods
	public String getId() {
		return this.Id;
	}
	
	public String getName() {
		return this.Name;
	}
	
	public String getDescription() {
		return this.Description;
	}
	
	public String getDean_Id() {
		return this.Dean_Id;
	}
	
	
	// Setter Methods
	public void setId(String Id) {
		this.Id = Id;
	}
	
	public void setName(String Name) {
		this.Name = Name;
	}
	
	public void setDescription(String Description) {
		this.Description = Description;
	}
	
	public void setDean_Id(String Dean_Id) {
		this.Dean_Id = Dean_Id;
	}
	
	

}
