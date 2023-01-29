package core.beans;

public class Domain {
	//Properties
	private String Id;
	private String Name;
	private String Description;
	

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
		
}
