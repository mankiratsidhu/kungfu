package com.kungfu.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kungfu.modal.Parents;

public class Parents_Load {
	public List<Parents> getpcList() {
		List<Parents> pcList = new ArrayList<Parents>();

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "aman", "Sopra123");
			Statement stmt = con.createStatement();
			String query = "select par_fname||' '||par_lname as pname,par_relation,s.stu_fname||' '||s.stu_lname as sname from parents p, student s where p.stu_num=s.stu_num";
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				//System.out.println(rs.getInt(1));
				// count = rs.getInt(1);
				Parents pc = new Parents( rs.getString("pname"),rs.getString("sname"),rs.getString("par_relation"));
				pcList.add(pc);
			}
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return pcList;
	}

	@Override
	public String toString() {
		return "LoadDataService [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}

}
