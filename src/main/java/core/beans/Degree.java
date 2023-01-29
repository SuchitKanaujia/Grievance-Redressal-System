package core.beans;

public class Degree {
	//Properties
	private 		String 			Id;
	private 		String 			Name;
	private 		String 			Description;
	private 		String 			Dep_Id;
	private 		int 			Persuing_Years;
	
	
	//Getter Methods
	public String getId() {
		return this.Id;
	}
	
	public String getName() {
		return this.Name;
	}
	
	public String getDescription() {
		return this.Description;
	}
	
	public String getDep_Id() {
		return this.Dep_Id;
	}
	
	public int getPersuing_Years() {
		return this.Persuing_Years;
	}
	
	
	
	
	//Setter Methods
	public void setId(String Id) {
		this.Id = Id;
	}
	
	public void setName(String Name) {
		this.Name = Name;
	}
	
	public void setDescription(String Description) {
		this.Description = Description;
	}
	
	public void setDep_Id(String Dep_Id) {
		this.Dep_Id = Dep_Id;
	}
	
	public void setPersuing_Years(int Persuing_Years) {
		this.Persuing_Years = Persuing_Years;
	}
	

}
