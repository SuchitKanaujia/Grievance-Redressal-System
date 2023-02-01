package core.app;

import java.util.*;
import core.beans.*;
import core.dao.*;

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
}
