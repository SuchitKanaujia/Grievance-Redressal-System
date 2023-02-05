package core.beans;

import java.util.*;
import core.dao.*;
import core.globals.UserDetails;

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

	public int add() {
		try {
			int id = IssueDAO.insertIssue(this);
			IssueLogs log = new IssueLogs();
			log.setIssue_Id(this.getId());
			log.setStatus_Id(1);
			log.setDoer_Id(this.getRegistered_By());
			log.setDoer_Level(4);
			log.setRaised_Time(LocalDateTime.now());
			IssueLogsDAO.insertIssueLog(log);
			return id;
		} catch (Exception ex) {
			System.err.println(ex);
			return -1;
		}
	}
	
	
	//Some static methods
	
	public static ArrayList<Issue> fetchAllIssuesOfStudent(String id) {
		return IssueDAO.fetchIssues("Registered_By = '" + id + "'");
	}

	public static boolean assign(int issueId, String assignedTo, String doerId, int doerLevel) {
		try {
			Issue issue = IssueDAO.fetchIssue(issueId);
			issue.setCurr_Status(2);
			issue.setAssigned_To(assignedTo);
			IssueDAO.updateIssue(issue);

			IssueLogs log = new IssueLogs();
			log.setIssue_Id(issue.getId());
			log.setStatus_Id(2);
			log.setDoer_Id(doerId);
			log.setDoer_Level(doerLevel);
			IssueLogsDAO.insertIssueLog(log);
		} catch (Exception ex) {
			System.err.println(ex);
			return false;
		}
		return true;
	}

	public static boolean startWorking(int issueId) {
		try {
			Issue issue = IssueDAO.fetchIssue(issueId);
			issue.setCurr_Status(3);
			IssueDAO.updateIssue(issue);
			IssueLogs log = new IssueLogs();
			log.setIssue_Id(issueId);
			log.setStatus_Id(3);
			log.setDoer_Id(UserDetails.userId);
			log.setDoer_Level(3);
			IssueLogsDAO.insertIssueLog(log);
		} catch (Exception ex) {
			System.err.println(ex);
			return false;
		}
		return true;
	}

	public static boolean resolve(int issueId) {
		try {
			Issue issue = IssueDAO.fetchIssue(issueId);
			issue.setCurr_Status(4);
			IssueDAO.updateIssue(issue);
			IssueLogs log = new IssueLogs();
			log.setIssue_Id(issueId);
			log.setStatus_Id(4);
			log.setDoer_Id(UserDetails.userId);
			log.setDoer_Level(UserDetails.userLevelId);
			IssueLogsDAO.insertIssueLog(log);
		} catch (Exception ex) {
			System.err.println(ex);
			return false;
		}
		return true;
	}

	public static boolean reject(int issueId) {
		try {
			Issue issue = IssueDAO.fetchIssue(issueId);
			issue.setCurr_Status(5);
			IssueDAO.updateIssue(issue);
			IssueLogs log = new IssueLogs();
			log.setIssue_Id(issueId);
			log.setStatus_Id(5);
			log.setDoer_Id(UserDetails.userId);
			log.setDoer_Level(UserDetails.userLevelId);
			IssueLogsDAO.insertIssueLog(log);
		} catch (Exception ex) {
			System.err.println(ex);
			return false;
		}
		return true;
	}
}
