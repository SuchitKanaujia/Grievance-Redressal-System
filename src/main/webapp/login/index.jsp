<%@page import="its.login.LoginObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logging you in...</title>
</head>
<body>
	<h5>
		<%
			String uname = request.getParameter("username");
			String pwd = request.getParameter("password");
			try {
				its.login.LoginObject loginObj = new its.login.LoginObject();
				its.login.LoginMethods loginMethods = new its.login.LoginMethods();
				loginObj = loginMethods.getLoginDetails(uname, pwd);
				if (loginObj.getUSERTYPE() == null || loginObj.getUSERTYPE().isEmpty())
					response.sendRedirect("wrongCredentials.jsp");
				else if (loginObj.getUSERTYPE().equals("ADM"))
					response.sendRedirect("../admin/");
				else if (loginObj.getUSERTYPE().equals("WAR"))
					response.sendRedirect("../warden/");
				else if (loginObj.getUSERTYPE().equals("SUP"))
					response.sendRedirect("../supervisor/");
				else if (loginObj.getUSERTYPE().equals("STU"))
					response.sendRedirect("../student/");
				else
					response.sendRedirect("wrongCredentials.jsp");
			} catch (Exception ex) {
				System.out.println(ex);
			}
		%>
	</h5>
</body>
</html>