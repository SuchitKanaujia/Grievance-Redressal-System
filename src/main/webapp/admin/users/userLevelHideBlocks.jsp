<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import ="org.json.*, its.userlevel.*"
    pageEncoding="ISO-8859-1"%>
<%
//Getting user-level id as HTTP Response
int id=Integer.parseInt(request.getParameter("ul_id"));

//Getting User-level Info
UserLevelDAO uldao = new UserLevelDAO();
UserLevel ul = uldao.getUserLevels(id);

//Creating JSON Object to carry data
JSONObject object = new JSONObject();

//Binding data into JSON Object
object.put("ul_id", ul.getUlId());
object.put("name", ul.getUlName());
object.put("desc", ul.getUlDesc());
object.put("a_name", ul.getUl_name());
object.put("a_dgbg", ul.getUl_dgbg());
object.put("a_email", ul.getUl_email());
object.put("a_contact", ul.getUl_contact());
object.put("a_paddr", ul.getUl_p_addr());
object.put("a_caddr", ul.getUl_c_addr());
object.put("a_fdetails", ul.getUl_f_details());
object.put("a_mdetails", ul.getUl_m_details());
object.put("a_st_basic", ul.getUl_student_basic());
object.put("a_procter", ul.getUl_procter());
object.put("a_emp_basic", ul.getUl_employee_basic());
object.put("a_depdesdoj", ul.getUl_depdesdoj());
object.put("a_domdoj", ul.getUl_domdoj());
object.put("a_domdesdoj", ul.getUl_domdesdoj());
object.put("a_hostel", ul.getUl_hostel());
object.put("a_pwd", ul.getUl_pwd());
object.put("f_reg_comp", ul.getFul_reg_comp());
object.put("f_track_comp", ul.getFul_track_comp());
object.put("f_app_comp", ul.getFul_app_comp());
object.put("f_mod_comp", ul.getFul_mod_comp());
object.put("f_gen_rep", ul.getFul_gen_rep());
object.put("f_user_mng", ul.getFul_user_mng());
object.put("f_site_mng", ul.getFul_site_mng());
object.put("f_edit_profile", ul.getFul_edit_profile());

//Converting JSON Object to String and Sending Data to AJAX
String jsonText = object.toString();
out.print(jsonText);  
%>