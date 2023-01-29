<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.Connection, java.sql.PreparedStatement,
java.sql.ResultSet, its.connection.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!
String checkValue(String s)
{
	if(s!=null)
	{
		return "YES";
	}
	return "NO";
}
%>
<%

String type = request.getParameter("userLevelSubmit");


//Updating User Level Data
if(type.equals("update")){
	//Getting User Level Information
	int ulId = Integer.parseInt(request.getParameter("m-user-level-id"));
	String ulName = request.getParameter("m-user-level-name");
	String ulDesc = request.getParameter("m-user-level-description");
	
	//Getting Attribute Data
	String ul_name = request.getParameter("aulName");
	String ul_dgbg= request.getParameter("aulDGBG");
	String ul_email = request.getParameter("aulEmail");
	String ul_contact = request.getParameter("aulContact");
	String ul_p_addr = request.getParameter("aulPAddr");
	String ul_c_addr= request.getParameter("aulCAddr");
	String ul_f_details = request.getParameter("aulFatherDetails");
	String ul_m_details = request.getParameter("aulMotherDetails");
	String ul_student_basic = request.getParameter("aulStudentBasic");
	String ul_procter= request.getParameter("aulProcter");
	String ul_employee_basic = request.getParameter("aulEmployeeBasic");
	String ul_depdesdoj = request.getParameter("aulDepDesDOJ");
	String ul_domdoj = request.getParameter("aulDomDOJ");
	String ul_domdesdoj= request.getParameter("aulDomDesDOJ");
	String ul_hostel = request.getParameter("aulHostel");
	String ul_pwd = request.getParameter("aulPwd");
	
	//Getting Functionality Data
	String ful_reg_comp = request.getParameter("fulRegComplaint");
	String ful_track_comp = request.getParameter("fulTrackComplaint");
	String ful_app_comp = request.getParameter("fulAppComplaint");
	String ful_mod_comp = request.getParameter("fulModComplaint");
	String ful_gen_rep = request.getParameter("fulGenReports");
	String ful_user_mng = request.getParameter("fulUserMng");
	String ful_site_mng = request.getParameter("fulSiteMng");
	String ful_edit_profile = request.getParameter("fulEditProfile");
	
	
	//Setting up connection
	try{
		Connection con = SQLConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("update user_level set ul_name=?, ul_desc=?, a_name=?, a_dgbg=?, a_email=?, a_contact=?, a_paddr=?, a_caddr=?, a_fdetails=?, a_mdetails=?, a_st_basic=?, a_procter=?, a_emp_basic=?, a_depdesdoj=?,a_domdoj=?, a_domdesdoj=?, a_hostel=?, a_pwd=?, f_reg_comp=?, f_track_comp=?, f_app_comp=?, f_mod_comp=?, f_gen_rep=?, f_user_mng=?, f_site_mng=?, f_edit_profile=? where ul_id=?");
		ps.setString(1, ulName);
		ps.setString(2, ulDesc);
		ps.setString(3, checkValue(ul_name));
		ps.setString(4, checkValue(ul_dgbg));
		ps.setString(5, checkValue(ul_email));
		ps.setString(6, checkValue(ul_contact));
		ps.setString(7, checkValue(ul_p_addr));
		ps.setString(8, checkValue(ul_c_addr));
		ps.setString(9, checkValue(ul_f_details));
		ps.setString(10, checkValue(ul_m_details));
		ps.setString(11, checkValue(ul_student_basic));
		ps.setString(12, checkValue(ul_procter));
		ps.setString(13, checkValue(ul_employee_basic));
		ps.setString(14, checkValue(ul_depdesdoj));
		ps.setString(15, checkValue(ul_domdoj));
		ps.setString(16, checkValue(ul_domdesdoj));
		ps.setString(17, checkValue(ul_hostel));
		ps.setString(18, checkValue(ul_pwd));
		ps.setString(19, checkValue(ful_reg_comp));
		ps.setString(20, checkValue(ful_track_comp));
		ps.setString(21, checkValue(ful_app_comp));
		ps.setString(22, checkValue(ful_mod_comp));
		ps.setString(23, checkValue(ful_gen_rep));
		ps.setString(24, checkValue(ful_user_mng));
		ps.setString(25, checkValue(ful_site_mng));
		ps.setString(26, checkValue(ful_edit_profile));
		ps.setInt(27,ulId);
		if(ps.executeUpdate()!=0){
			out.print("<center><h4 style='color:green;'>Updated Successfully!</h4></center>");
		}
		else{
			out.print("<center><h4 style='color:red;'>Could Not Update Data</h4></center>");
		}
		con.close();
	}catch(Exception ex)
	{
		out.print("<center><h4 style='color: red'>Some Error Occured: "+ex+" !</h4><center>");
		System.out.println(ex.getMessage());
	}

}


//Deleting User Level
else if(type.equals("delete"))
{
	//Getting User Level Information
	int ulId = Integer.parseInt(request.getParameter("m-user-level-id"));
	try{
		Connection con = SQLConnection.getConnection();
		PreparedStatement ps = con.prepareStatement("delete from user_level where ul_id=?");
		ps.setInt(1, ulId);
		if(ps.executeUpdate()!=0){
			out.print("<center><h4 style='color:green;'>Deleted Successfully!</h4></center>");
		}
		else{
			out.print("<center><h4 style='color:red;'>Could Not Delete</h4></center>");
		}
		con.close();
	}catch(Exception ex)
	{
		out.print("<center><h4 style='color: red'>Some Error Occured: "+ex+" !</h4><center>");
		System.out.println(ex.getMessage());
	}
}


else{
	out.print("No Inputs!!");
}
%>
</body>
</html>