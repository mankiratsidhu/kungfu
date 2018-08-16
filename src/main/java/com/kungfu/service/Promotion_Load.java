package com.kungfu.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kungfu.modal.Promotion;

public class Promotion_Load {
	public List<Promotion> getProList() {
	List<Promotion> attList = new ArrayList<Promotion>();

	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");

		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "aman", "Sopra123");
		Statement stmt = con.createStatement();
		String query = "select sr.stu_num,s.stu_fname||' '||s.stu_lname as name, (select rank_color from rank r where r.rank_id=sr.rank_id) rank,sr.rank_award_date from student_rank sr,student s where s.stu_num=sr.stu_num order by s.stu_num,rank_award_date desc";
		ResultSet rs = stmt.executeQuery(query);
		while (rs.next()) {
			// System.out.println(rs.getInt(1));
			// count = rs.getInt(1);
			Promotion att = new Promotion(rs.getString(1), rs.getString(2), rs.getString(3),rs.getString(4));
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
