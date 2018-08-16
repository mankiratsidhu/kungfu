package com.kungfu.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kungfu.modal.Att_stu;

public class Attendance_Load {
	public List<Att_stu> getattList() {
	List<Att_stu> attList = new ArrayList<Att_stu>();

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");

		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "aman", "Sopra123");
		Statement stmt = con.createStatement();
		String query = "select s.stu_num,stu_fname||' '||stu_lname as name,c.class_level,to_char(att.tt_date,'DD-MM-YYYY') from attendance att, class c, student s where s.stu_num=att.stu_num and att.class_id=c.class_id";
		ResultSet rs = stmt.executeQuery(query);
		while (rs.next()) {
			// System.out.println(rs.getInt(1));
			// count = rs.getInt(1);
			Att_stu att = new Att_stu(rs.getString(1), rs.getString(2), rs.getString(3),rs.getString(4));
			attList.add(att);
		}
		con.close();

	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return attList;
}

@Override
public String toString() {
	return "LoadDataService [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
			+ super.toString() + "]";
}
}
