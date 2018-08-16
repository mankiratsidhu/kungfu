package com.kungfu.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kungfu.modal.Student;

public class Student_Load {
	public List<Student> getStudentList() {
		List<Student> studentList = new ArrayList<Student>();

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "aman", "Sopra123");
			Statement stmt = con.createStatement();
			String query = "SELECT stu_num,stu_fname,stu_lname,stu_street||' '||stu_city||' '||stu_state||' '||stu_zip as address,"
					+ "stu_email,to_char(stu_dob,'DD-MM-YYYY') stu_dob,to_char(stu_date_joined,'DD-MM-YYYY') stu_date_joined,stu_mobile"
					+ ",(select rank_color from rank r,student_rank sr where sr.rank_id=(select max(rank_id) from student_rank s1 where s1.stu_num=sr.stu_num) and r.rank_id=sr.rank_id and sr.stu_num=s.stu_num) Rank FROM student s";
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				System.out.println(rs.getInt(1));
				// count = rs.getInt(1);
				Student student = new Student(rs.getInt("stu_num"), rs.getString("stu_fname"),
						rs.getString("stu_lname"), rs.getString("address"), rs.getString("stu_email"),
						rs.getString("stu_dob"), rs.getString("stu_date_joined"), rs.getString("stu_mobile"),rs.getString("rank"));
				studentList.add(student);
			}
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return studentList;
	}

	@Override
	public String toString() {
		return "LoadDataService [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}

}
