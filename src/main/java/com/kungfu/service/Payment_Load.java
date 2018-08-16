package com.kungfu.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.kungfu.modal.Payment;

public class Payment_Load {
	public List<Payment> getpayList() {
		List<Payment> payList = new ArrayList<Payment>();

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "aman", "Sopra123");
			Statement stmt = con.createStatement();
			String query = "select i.stu_num,stu_fname||' '||stu_lname as name,i.pay_productinfo,i.pay_amount, to_char(i.pay_date,'DD-MM-YYYY') pay_date from payment_info i, student s where s.stu_num=i.stu_num";
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				// System.out.println(rs.getInt(1));
				// count = rs.getInt(1);
				Payment pay = new Payment(rs.getString(1), rs.getString(2), rs.getString(3),rs.getString(4),rs.getString(5));
				payList.add(pay);
			}
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return payList;
	}

	@Override
	public String toString() {
		return "LoadDataService [getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
}
