package core.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.*;
import helper.connection.SQLConnection;
import core.beans.Student;
import helper.sql.*;
import helper.model.*;

public class StudentDAO {

	public static ArrayList<Student> fetchStudents(String whereClause) {
		ArrayList<Student> allStudents = new ArrayList<Student>();
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			
			ArrayList<String> selectedColumns = new ArrayList<>(
					Arrays.asList("Reg_No", "First_Name", "Mid_Name", "Last_Name", "DOB", "Gender", "Blood_Grp",
							"Email", "Email_2", "Contact", "Contact_2", "Address_Line_1", "Address_Line_2", "City",
							"District", "ZIP", "State", "Country", "Father_Name", "Father_Email", "Father_Contact",
							"Father_Occupation", "Father_Income", "Mother_Name", "Mother_Email", "Mother_Contact",
							"Mother_Occupation", "Mother_Income", "Batch", "Fee_Status", "Hostel_Id", "Room_No",
							"Floor_No", "Room_Type", "Mess_Id", "Food_Preference", "Password", "Profile_Pic",
							"User_Level", "Degree_Id"));
			
			String selectQuery = (whereClause.equals(""))
					? SQLQueries.generateSelectQuery("tbl_Student", selectedColumns)
					: SQLQueries.generateSelectQuery("tbl_Student", selectedColumns, whereClause);
			PreparedStatement ps = connection.prepareStatement(selectQuery);
			ResultSet rs = ps.executeQuery();
			if (!rs.isBeforeFirst()) {
				System.out.println("No Students Available!");
			}
			while (rs.next()) {
				Student record = new Student();
				record.setRegNo(rs.getString(1));
				record.setFirstName(rs.getString(2));
				record.setMidName(rs.getString(3));
				record.setLastName(rs.getString(4));
				record.setDOB(LocalDate.of(Integer.parseInt(rs.getString(5).substring(0, 4)),
						Integer.parseInt(rs.getString(5).substring(5, 7)),
						Integer.parseInt(rs.getString(5).substring(8, 10))));
				record.setGender(rs.getString(6).charAt(0));
				record.setBloodGroup(rs.getString(7));
				record.setEmail(rs.getString(8));
				record.setEmail2(rs.getString(9));
				record.setContact(rs.getString(10));
				record.setContact2(rs.getString(11));
				record.setAddress1(rs.getString(12));
				record.setAddress2(rs.getString(13));
				record.setCity(rs.getString(14));
				record.setDistrict(rs.getString(15));
				record.setZip(rs.getInt(16));
				record.setState(rs.getString(17));
				record.setCountry(rs.getString(18));
				record.setFatherName(rs.getString(19));
				record.setFatherEmail(rs.getString(20));
				record.setFatherContact(rs.getString(21));
				record.setFatherOcc(rs.getString(22));
				record.setFatherIncome(rs.getString(23));
				record.setMotherName(rs.getString(24));
				record.setMotherEmail(rs.getString(25));
				record.setMotherContact(rs.getString(26));
				record.setMotherOcc(rs.getString(27));
				record.setMotherIncome(rs.getString(28));
				record.setBatch(rs.getString(29));
				record.setFeeStatus(rs.getString(30));
				record.setHostelId(rs.getInt(31));
				record.setRoomNo(rs.getString(32));
				record.setFloorNo(rs.getInt(33));
				record.setRoomType(rs.getString(34));
				record.setMessId(rs.getInt(35));
				record.setFoodPref(rs.getString(36));
				record.setPassword(rs.getString(37));
				record.setProfilePic(rs.getString(38));
				record.setUserLevel(rs.getInt(39));
				record.setDegreeId(rs.getString(40));
				
				
				allStudents.add(record);
			}

			connection.close();
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
		}

		return allStudents;
	}

	public static boolean insertStudent(Student student) {
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toInsert = new HashMap<String, GenericType>();

			if (student.getRegNo() != null)
				toInsert.put("Reg_No", new GenericType("'" + student.getRegNo() + "'"));
			if (student.getFirstName() != null)
				toInsert.put("First_Name", new GenericType("'" + student.getFirstName() + "'"));
			if (student.getMidName() != null)
				toInsert.put("Mid_Name", new GenericType("'" + student.getMidName() + "'"));
			if (student.getLastName() != null)
				toInsert.put("Last_Name", new GenericType("'" + student.getLastName() + "'"));
			if (student.getDOB() != null)
				toInsert.put("DOB", new GenericType("'" + student.getDOB() + "'"));
			if (student.getGender() != '\0')
				toInsert.put("Gender", new GenericType("'" + student.getGender() + "'"));
			if (student.getBloodGroup() != null)
				toInsert.put("Blood_Grp", new GenericType("'" + student.getBloodGroup() + "'"));
			if (student.getEmail() != null)
				toInsert.put("Email", new GenericType("'" + student.getEmail() + "'"));
			if (student.getEmail2() != null)
				toInsert.put("Email_2", new GenericType("'" + student.getEmail2() + "'"));
			if (student.getContact() != null)
				toInsert.put("Contact", new GenericType("'" + student.getContact() + "'"));
			if (student.getContact2() != null)
				toInsert.put("Contact_2", new GenericType("'" + student.getContact2() + "'"));
			if (student.getAddress1() != null)
				toInsert.put("Address_Line_1", new GenericType("'" + student.getAddress1() + "'"));
			if (student.getAddress2() != null)
				toInsert.put("Address_Line_2", new GenericType("'" + student.getAddress2() + "'"));
			if (student.getCity() != null)
				toInsert.put("City", new GenericType("'" + student.getCity() + "'"));
			if (student.getDistrict() != null)
				toInsert.put("District", new GenericType("'" + student.getDistrict() + "'"));
			if (student.getZip() != 0)
				toInsert.put("ZIP", new GenericType(student.getZip()));
			if (student.getState() != null)
				toInsert.put("State", new GenericType("'" + student.getState() + "'"));
			if (student.getCountry() != null)
				toInsert.put("Country", new GenericType("'" + student.getCountry() + "'"));
			if (student.getFatherName() != null)
				toInsert.put("Father_name", new GenericType("'" + student.getFatherName() + "'"));
			if (student.getFatherEmail() != null)
				toInsert.put("Father_Email", new GenericType("'" + student.getFatherEmail() + "'"));
			if (student.getFatherContact() != null)
				toInsert.put("Father_COntact", new GenericType("'" + student.getFatherContact() + "'"));
			if (student.getFatherOcc() != null)
				toInsert.put("Father_Occupation", new GenericType("'" + student.getFatherOcc() + "'"));
			if (student.getFatherIncome() != null)
				toInsert.put("Father_Income", new GenericType("'" + student.getFatherIncome() + "'"));
			if (student.getMotherName() != null)
				toInsert.put("Mother_name", new GenericType("'" + student.getMotherName() + "'"));
			if (student.getMotherEmail() != null)
				toInsert.put("Mother_Email", new GenericType("'" + student.getMotherEmail() + "'"));
			if (student.getMotherContact() != null)
				toInsert.put("Mother_COntact", new GenericType("'" + student.getMotherContact() + "'"));
			if (student.getMotherOcc() != null)
				toInsert.put("Mother_Occupation", new GenericType("'" + student.getMotherOcc() + "'"));
			if (student.getMotherIncome() != null)
				toInsert.put("Mother_Income", new GenericType("'" + student.getMotherIncome() + "'"));
			if (student.getBatch() != null)
				toInsert.put("Batch", new GenericType("'" + student.getBatch() + "'"));
			if (student.getFeeStatus() != null)
				toInsert.put("Fee_Status", new GenericType("'" + student.getFeeStatus() + "'"));
			if (student.getHostelId() != 0)
				toInsert.put("Hostel_Id", new GenericType(student.getHostelId()));
			if (student.getRoomNo() != null)
				toInsert.put("Room_No", new GenericType("'" + student.getRoomNo() + "'"));
			if (student.getFloorNo() != 0)
				toInsert.put("Floor_No", new GenericType(student.getFloorNo()));
			if (student.getRoomType() != null)
				toInsert.put("Room_Type", new GenericType("'" + student.getRoomType() + "'"));
			if (student.getMessId() != 0)
				toInsert.put("Mess_Id", new GenericType(student.getMessId()));
			if (student.getFoodPref() != null)
				toInsert.put("Food_Preferences", new GenericType("'" + student.getFoodPref() + "'"));
			if (student.getPassword() != null)
				toInsert.put("Password", new GenericType("'" + student.getPassword() + "'"));
			if (student.getProfilePic() != null)
				toInsert.put("Profile_Pic", new GenericType("'" + student.getProfilePic() + "'"));
			if (student.getUserLevel() != 0)
				toInsert.put("User_Level", new GenericType(student.getUserLevel()));
			if (student.getDegreeId() != null)
				toInsert.put("Degree_Id", new GenericType("'" + student.getDegreeId() + "'"));
			

			String insertQuery = SQLQueries.generateInsertQuery("tbl_Student", toInsert);
			PreparedStatement ps = connection.prepareStatement(insertQuery);
			int status = ps.executeUpdate();
			System.out.println(status);

			if (status == 0) {
				return false;
			}

			connection.close();
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
			return false;
		}

		return true;
	}

	public static boolean updateStudent(Student student) {
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			HashMap<String, GenericType> toUpdate = new HashMap<String, GenericType>();

			if (student.getFirstName() != null)
				toUpdate.put("First_Name", new GenericType("'" + student.getFirstName() + "'"));
			if (student.getMidName() != null)
				toUpdate.put("Mid_Name", new GenericType("'" + student.getMidName() + "'"));
			if (student.getLastName() != null)
				toUpdate.put("Last_Name", new GenericType("'" + student.getLastName() + "'"));
			if (student.getDOB() != null)
				toUpdate.put("DOB", new GenericType("'" + student.getDOB() + "'"));
			if (student.getGender() != '\0')
				toUpdate.put("Gender", new GenericType("'" + student.getGender() + "'"));
			if (student.getBloodGroup() != null)
				toUpdate.put("Blood_Grp", new GenericType("'" + student.getBloodGroup() + "'"));
			if (student.getEmail() != null)
				toUpdate.put("Email", new GenericType("'" + student.getEmail() + "'"));
			if (student.getEmail2() != null)
				toUpdate.put("Email_2", new GenericType("'" + student.getEmail2() + "'"));
			if (student.getContact() != null)
				toUpdate.put("Contact", new GenericType("'" + student.getContact() + "'"));
			if (student.getContact2() != null)
				toUpdate.put("Contact_2", new GenericType("'" + student.getContact2() + "'"));
			if (student.getAddress1() != null)
				toUpdate.put("Address_Line_1", new GenericType("'" + student.getAddress1() + "'"));
			if (student.getAddress2() != null)
				toUpdate.put("Address_Line_2", new GenericType("'" + student.getAddress2() + "'"));
			if (student.getCity() != null)
				toUpdate.put("City", new GenericType("'" + student.getCity() + "'"));
			if (student.getDistrict() != null)
				toUpdate.put("District", new GenericType("'" + student.getDistrict() + "'"));
			if (student.getZip() != 0)
				toUpdate.put("ZIP", new GenericType(student.getZip()));
			if (student.getState() != null)
				toUpdate.put("State", new GenericType("'" + student.getState() + "'"));
			if (student.getCountry() != null)
				toUpdate.put("Country", new GenericType("'" + student.getCountry() + "'"));
			if (student.getFatherName() != null)
				toUpdate.put("Father_name", new GenericType("'" + student.getFatherName() + "'"));
			if (student.getFatherEmail() != null)
				toUpdate.put("Father_Email", new GenericType("'" + student.getFatherEmail() + "'"));
			if (student.getFatherContact() != null)
				toUpdate.put("Father_COntact", new GenericType("'" + student.getFatherContact() + "'"));
			if (student.getFatherOcc() != null)
				toUpdate.put("Father_Occupation", new GenericType("'" + student.getFatherOcc() + "'"));
			if (student.getFatherIncome() != null)
				toUpdate.put("Father_Income", new GenericType("'" + student.getFatherIncome() + "'"));
			if (student.getMotherName() != null)
				toUpdate.put("Mother_name", new GenericType("'" + student.getMotherName() + "'"));
			if (student.getMotherEmail() != null)
				toUpdate.put("Mother_Email", new GenericType("'" + student.getMotherEmail() + "'"));
			if (student.getMotherContact() != null)
				toUpdate.put("Mother_COntact", new GenericType("'" + student.getMotherContact() + "'"));
			if (student.getMotherOcc() != null)
				toUpdate.put("Mother_Occupation", new GenericType("'" + student.getMotherOcc() + "'"));
			if (student.getMotherIncome() != null)
				toUpdate.put("Mother_Income", new GenericType("'" + student.getMotherIncome() + "'"));
			if (student.getBatch() != null)
				toUpdate.put("Batch", new GenericType("'" + student.getBatch() + "'"));
			if (student.getFeeStatus() != null)
				toUpdate.put("Fee_Status", new GenericType("'" + student.getFeeStatus() + "'"));
			if (student.getHostelId() != 0)
				toUpdate.put("Hostel_Id", new GenericType(student.getHostelId()));
			if (student.getRoomNo() != null)
				toUpdate.put("Room_No", new GenericType("'" + student.getRoomNo() + "'"));
			if (student.getFloorNo() != 0)
				toUpdate.put("Floor_No", new GenericType(student.getFloorNo()));
			if (student.getRoomType() != null)
				toUpdate.put("Room_Type", new GenericType("'" + student.getRoomType() + "'"));
			if (student.getMessId() != 0)
				toUpdate.put("Mess_Id", new GenericType(student.getMessId()));
			if (student.getFoodPref() != null)
				toUpdate.put("Food_Preferences", new GenericType("'" + student.getFoodPref() + "'"));
			if (student.getPassword() != null)
				toUpdate.put("Password", new GenericType("'" + student.getPassword() + "'"));
			if (student.getProfilePic() != null)
				toUpdate.put("Profile_Pic", new GenericType("'" + student.getProfilePic() + "'"));
			if (student.getUserLevel() != 0)
				toUpdate.put("User_Level", new GenericType(student.getUserLevel()));
			if (student.getDegreeId() != null)
				toUpdate.put("Degree_Id", new GenericType("'" + student.getDegreeId() + "'"));

			

			String updateQuery = SQLQueries.generateUpdateQuery("tbl_Student", toUpdate,
					"[Reg_no] = '" + student.getRegNo() + "'");
			PreparedStatement ps = connection.prepareStatement(updateQuery);
			int status = ps.executeUpdate();
			System.out.println(status);

			if (status == 0) {
				return false;
			}

			connection.close();
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
			return false;
		}

		return true;
	}

	public static boolean deleteStudent(String regNo) {
		try {
			Connection connection = SQLConnection.getAzureDBConnection();
			String deleteQuery = SQLQueries.generateDeleteQuery("tbl_Student", "[Reg_no] = '" + regNo + "'");
			PreparedStatement ps = connection.prepareStatement(deleteQuery);
			int status = ps.executeUpdate();
			System.out.println(status);

			if (status == 0) {
				return false;
			}

			connection.close();
		} catch (Exception ex) {
			System.err.println(ex.getMessage());
			return false;
		}

		return true;
	}
	
	public static HashMap<String, String> fetchNames(ArrayList<String> ids) {
		String query = "[Reg_No] IN (";
		for (String id : ids) {
			query= query + "'" + id + "', ";			
		}
		ArrayList<Student> students = fetchStudents(query.substring(0, query.length()-2 ) + ")");
		
		HashMap<String, String> hash = new HashMap<String, String>();
		for (Student student:students) {
			String name = student.getFirstName() + " " + student.getLastName();
			hash.put(student.getRegNo(), name);
		}
		return hash;
	}
	
	

}
