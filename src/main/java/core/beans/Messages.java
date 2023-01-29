package core.beans;
import java.time.LocalDateTime;

public class Messages {
	// Properties
	private 	int 			Issue_Id;
	private 	String 			Message;
	private 	String 			Messager_Id;
	private 	int 			Messager_Level;
	private 	LocalDateTime 	Messgae_Time;
	
	
	// Getter Methods
	public int getIssue_Id() {
		return this.Issue_Id;
	}
	
	public String getMessage() {
		return this.Message;
	}
	
	public String getMessager_Id() {
		return this.Messager_Id;
	}
	
	public int getMessager_Level() {
		return this.Messager_Level;
	}
	
	public LocalDateTime getMessgae_Time() {
		return this.Messgae_Time;
	}
	
	
	// Setter Methods
	public void setIssue_Id(int Issue_Id) {
		this.Issue_Id = Issue_Id;
	}
	
	public void setMessage(String Message) {
		this.Message = Message;
	}
	
	public void setMessager_Id(String Messager_Id) {
		this.Messager_Id = Messager_Id;
	}
	
	public void setMessager_Level(int Messager_Level) {
		this.Messager_Level = Messager_Level;
	}
	
	public void setMessgae_Time(LocalDateTime Messgae_Time) {
		this.Messgae_Time = Messgae_Time;
	}
	
	
	

}
