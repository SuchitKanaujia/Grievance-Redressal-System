package core.app;

import java.util.*;
import core.beans.*;
import core.dao.*;
import core.globals.UserDetails;

import java.time.LocalDateTime;

public class IssueModule {
	public static ArrayList<Issue> fetchAllIssuesOfStudent(String id) {
		return IssueDAO.fetchIssues("Registered_By = '" + id + "'");
	}

	public static boolean assignIssue(int issueId, String assignedTo, String doerId, int doerLevel) {
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
