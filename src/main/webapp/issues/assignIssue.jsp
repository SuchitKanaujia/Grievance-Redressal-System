<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="core.globals.*, core.app.IssueModule" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String issueId = request.getParameter("issueId");
	Boolean flag = IssueModule.assignIssue(Integer.parseInt(issueId), UserDetails.userId, UserDetails.userId, 3);
	response.setContentType("text/plain");
	if (flag == true) {
		response.getWriter().write("Success");
	} else {
		response.getWriter().write("Fail");
	}
	%>
</body>
</html>