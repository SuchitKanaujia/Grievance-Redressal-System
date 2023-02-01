package core.beans;
import java.time.LocalDateTime;

public class IssueLogs {
	// Properties
	private 	int 			Issue_Id;
	private 	int 			Status_Id;
	private 	String 			Doer_Id;
	private 	int 			Doer_Level;
	private 	LocalDateTime 	Raised_Time;
	
	
	
	// Getter Methods
	public int getIssue_Id() {
		return this.Issue_Id;
	}
	
	public int getStatus_Id() {
		return this.Status_Id;
	}
	
	public String getDoer_Id() {
		return this.Doer_Id;
	}
	
	public int getDoer_Level() {
		return this.Doer_Level;
	}
	
	public LocalDateTime getRaised_Time() {
		return this.Raised_Time;
	}
	
	
	
	// Setter Method
	public void setIssue_Id(int Issue_Id) {
		this.Issue_Id = Issue_Id;
	}
	
	public void setStatus_Id(int Status_Id) {
		this.Status_Id = Status_Id;
	}
	
	public void setDoer_Id(String Doer_Id) {
		this.Doer_Id = Doer_Id;
	}
	
	public void setDoer_Level(int Doer_Level) {
		this.Doer_Level = Doer_Level;
	}
	
	public void setRaised_Time(LocalDateTime Raised_Time) {
		this.Raised_Time = Raised_Time;
	}

}
