package core.globals;

import java.util.ArrayList;
import java.util.HashMap;
import core.beans.*;
import core.dao.*;

public class Dimensions {
	public static ArrayList<UserLevel> userLevels;
	public static ArrayList<Domain> domains;
	public static ArrayList<Status> statuses;
	public static ArrayList<Hostel> hostels;
	public static ArrayList<Mess> messes;
	public static HashMap<Integer, UserLevel> userLevelMap;
	public static HashMap<String, Domain> domainMap;
	public static HashMap<Integer, Status> statusMap;

	public Dimensions() {
		// User Levels
		userLevels = UserLevelDAO.fetchUserLevels(new String(""));
		userLevelMap = new HashMap<Integer, UserLevel>();
		for (UserLevel userLevel : userLevels) {
			userLevelMap.put(userLevel.getId(), userLevel);
		}

		// Domains
		domains = DomainDAO.fetchDomains(new String(""));
		domainMap = new HashMap<String, Domain>();
		for (Domain domain : domains) { 
			domainMap.put(domain.getId(), domain);
		}

		// Status
		statuses = StatusDAO.fetchStatus(new String(""));
		statusMap = new HashMap<Integer, Status>();
		for (Status status : statuses) {
			statusMap.put(status.getId(), status);
		}
	}
}
