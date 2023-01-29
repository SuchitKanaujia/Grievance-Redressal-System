package core.beans;

public class Mess {
	// Properties
	private int Id;
	private String Name;
	private String Type;
	private String Cuisine;
	private String Description;
	private int Hostel_Id;
	private int Floor_No;
	
	
	// Getter Methods
	public int getId() {
		return this.Id;
	}
	
	public String getName() {
		return this.Name;
	}
	
	public String getType() {
		return this.Type;
	}
	
	public String getCuisine() {
		return this.Cuisine;
	}
	
	public String getDescription() {
		return this.Description;
	}
	
	public int getHostel_Id() {
		return this.Hostel_Id;
	}
	
	public int getFloor_no() {
		return this.Floor_No;
	}
	
	
	
	// Setter Methods
	public void setId(int Id) {
		this.Id = Id;
	}
	
	public void setName(String Name) {
		this.Name = Name;
	}
	
	public void setType(String Type) {
		this.Type = Type;
	}
	
	public void setCuisine(String Cuisine) {
		this.Cuisine = Cuisine;
	}
	
	public void setDescription(String Description) {
		this.Description = Description;
	}
	
	public void setHostel_Id(int Hostel_Id) {
		this.Hostel_Id = Hostel_Id;
	}
	
	public void setFloor_No(int Floor_No) {
		this.Floor_No = Floor_No;
	}
	

}
