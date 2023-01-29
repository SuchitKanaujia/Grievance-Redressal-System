package core.beans;

public class Status {
	// Properties
	private int Id;
	private String Name;
	private String Description;
	private int Order;
	private int TTL;
	
	
	// Getter Methods
	public int getId() {
		return this.Id;
	}
	
	public String getName() {
		return this.Name;
	}
	
	public String getDescription() {
		return this.Description;
	}
	
	public int getOrder() {
		return this.Order;
	}
	
	public int getTTL() {
		return this.TTL;
	}
	
	
	// Setter Methods
	public void setId(int Id) {
		this.Id = Id;
	}

	public void setName(String Name) {
		this.Name = Name;
	}

	public void setDescription(String Description) {
		this.Description = Description;
	}

	public void setOrder(int Order) {
		this.Order = Order;
	}

	public void setTTL(int TTL) {
		this.TTL = TTL;
	}

	
	
	
	
	

}
