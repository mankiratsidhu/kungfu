/**
 * 
 */
package com.kungfu.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kungfu.modal.Info_Class;

/**
 * @author Aman
 *
 */
public class ClassInfo_Load {
	public List<Info_Class> getclassList() {
		List<Info_Class> classList = new ArrayList<Info_Class>();

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "aman", "Sopra123");
			Statement stmt = con.createStatement();
			String query = "select class_level,class_time,class_day from aman.class";
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				// System.out.println(rs.getInt(1));
				// count = rs.getInt(1);
				Info_Class ci = new Info_Class(rs.getString(1), rs.getString("class_time"), rs.getString("class_day"));
				classList.add(ci);
			}
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return classList;
	}

	@Override
	public String toString() {
		return "LoadDataService [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
}
