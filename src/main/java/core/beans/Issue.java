package core.beans;

import java.util.*;
import core.dao.*;
import java.time.LocalDateTime;

public class Issue {
	// Properties
	private int Id;
	private String Registered_By;
	private String Domain_Id;
	private String Description;
	private int Curr_Status;
	private String Assigned_To;

	// Getter Methods
	public int getId() {
		return this.Id;
	}

	public String getRegistered_By() {
		return this.Registered_By;
	}

	public String getDomain_Id() {
		return this.Domain_Id;
	}

	public String getDescription() {
		return this.Description;
	}

	public int getCurr_Status() {
		return this.Curr_Status;
	}

	public String getAssigned_To() {
		return this.Assigned_To;
	}

	// Setter Methods
	public void setId(int Id) {
		this.Id = Id;
	}

	public void setRegistered_By(String Registered_By) {
		this.Registered_By = Registered_By;
	}

	public void setDomain_Id(String Domain_Id) {
		this.Domain_Id = Domain_Id;
	}

	public void setDescription(String Description) {
		this.Description = Description;
	}

	public void setCurr_Status(int Curr_Status) {
		this.Curr_Status = Curr_Status;
	}

	public void setAssigned_To(String Assigned_To) {
		this.Assigned_To = Assigned_To;
	}

	// Custom Utility Methods
	public ArrayList<IssueLogs> getLogs() {
		return IssueLogsDAO.fetchIssueLogs("Issue_Id = " + this.getId());
	}

	public LocalDateTime getRegTime() {
		int id = this.getId();
		ArrayList<IssueLogs> logs = IssueLogsDAO.fetchIssueLogs("[Issue_Id] = " + id + "AND [Status_Id] = 1");
		IssueLogs log = logs.get(0);
		return log.getRaised_Time();
	}

	public boolean add() {
		try {
			IssueDAO.insertIssue(this);
			IssueLogs log = new IssueLogs();
			log.setIssue_Id(this.getId());
			log.setStatus_Id(1);
			log.setDoer_Id(this.getRegistered_By());
			log.setDoer_Level(4);
			log.setRaised_Time(LocalDateTime.now());
			IssueLogsDAO.insertIssueLog(log);
		} catch (Exception ex) {
			System.err.println(ex);
			return false;
		}
		return true;
	}

}
