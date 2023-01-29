package core.beans;

public class Hostel {
	// Properties
	private int Id;
	private String Name;
	private String Description;
	private int Floor_Count;
	private int Room_Count;
	
	
	//Getter Methods
	public int getId() {
		return this.Id;
	}
	
	public String getName() {
		return this.Name;
	}
	
	public String getDescription() {
		return this.Description;
	}
	
	public int getFloor_Count() {
		return this.Floor_Count;
	}
	
	public int getRoom_Count() {
		return this.Room_Count;
	}
	
	
	//Setter methods
	public void setId(int Id) {
		this.Id = Id;
	}

	
	public void setName(String Name) {
		this.Name = Name;
	}

	public void setDescription(String Description) {
		this.Description = Description;
	}

	public void setFloor_Count(int Floor_Count) {
		this.Floor_Count = Floor_Count;
	}

	public void setRoom_Count(int Room_Count) {
		this.Room_Count = Room_Count;
	}

	
	
}
