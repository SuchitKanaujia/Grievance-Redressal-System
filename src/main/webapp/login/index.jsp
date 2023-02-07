<%@page import="core.globals.*, core.app.LoginModule, core.beans.UserLevel"%>
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
			String userName = request.getParameter("username");
			String password = request.getParameter("password");
			String userLevel = request.getParameter("user-level");
			try {
				//UserLevel userLevelObj =  Dimensions.userLevelMap.get(Integer.parseInt(userLevel));
				if(LoginModule.approveLogin(Integer.parseInt(userLevel), userName, password)){
					switch(Integer.parseInt(userLevel)){
					case 2:
						response.sendRedirect("../warden/");
						break;
					case 3:
						response.sendRedirect("../supervisor/");
						break;
					case 4:
						response.sendRedirect("../student/");
						break;
					case 5:
						response.sendRedirect("../admin/");
						break;
					}
				}
				else{
					response.sendRedirect("wrongCredentials.jsp");
				}
			} catch (Exception ex) {
				System.out.println(ex);
			}
		%>
	</h5>
</body>
</html>