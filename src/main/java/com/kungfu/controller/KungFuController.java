package com.kungfu.controller;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.kungfu.service.Att_Filter;
import com.kungfu.service.Promotion_Filter;
import com.kungfu.service.Attendance_Load;
import com.kungfu.service.ClassInfo_Load;
import com.kungfu.service.Parents_Load;
import com.kungfu.service.Student_Load;
import com.kungfu.service.Payment_Load;
import com.kungfu.service.Promotion_Load;

/**
 * This class is the main controller of this University Registration System. All
 * the request go through this controller.
 *
 */
@Controller
@RequestMapping("/")
public class KungFuController {

	// Object for logger class instantiated
	final static Logger logger = Logger.getLogger(KungFuController.class);

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String homePage(ModelMap model, HttpServletRequest request) {

		logger.info("Application started. Loading home page.");

		
		logger.info("Adding the categories in the model");

		// Adding all the products in the model
		logger.info("Adding all the products in the model");

		return "index";
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String back(ModelMap model, HttpServletRequest request) {

		

		return "menu";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginUser(ModelMap model, @RequestParam("email") String email,
			@RequestParam("password") String password, HttpServletRequest request, HttpServletResponse response) {
		String result = "";
		int count = 0;
		HttpSession session = request.getSession();
		logger.info("Adding the login in the session");
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "mankirat", "apply123");
			Statement stmt = con.createStatement();
			String query = "select count(1) from user_info where username='" + email.toLowerCase() + "' and password='"
					+ password + "'";
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				logger.info("value of count: " + rs.getInt(1));
				System.out.println(rs.getInt(1));
				count = rs.getInt(1);
			}
			con.close();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (count == 1)
			return "menu";
		else
		{
			model.addAttribute("error", "Username/password mismatch");
			return "index";
		}

			

	}

	@RequestMapping(value = "/adminMenu", method = RequestMethod.POST)
	public String adminMenu(ModelMap model, @RequestParam("adminAction") String action, HttpServletRequest request,
			HttpServletResponse response) throws JsonProcessingException {
		String result = "";
		if (action.equalsIgnoreCase("CREATESTUDENT")) {
			result = "studentCreation";
		} else if (action.equalsIgnoreCase("VIEWSTUDENT")) {

			Student_Load dataService = new Student_Load();
			Parents_Load pc = new Parents_Load();
			ClassInfo_Load ci = new ClassInfo_Load();
			Payment_Load lpay = new Payment_Load();
			Attendance_Load latt =new Attendance_Load();
			ObjectMapper mapper = new ObjectMapper();
			ObjectMapper mapper1 = new ObjectMapper();
			ObjectMapper mapper2 = new ObjectMapper();
			ObjectMapper mapper3 = new ObjectMapper();
			ObjectMapper mapper4 = new ObjectMapper();

			model.addAttribute("studentList", mapper.writeValueAsString(dataService.getStudentList()));
			model.addAttribute("pcList", mapper1.writeValueAsString(pc.getpcList()));
			model.addAttribute("classList", mapper2.writeValueAsString(ci.getclassList()));
			model.addAttribute("payList", mapper3.writeValueAsString(lpay.getpayList()));
			model.addAttribute("attList", mapper4.writeValueAsString(latt.getattList()));

			result = "viewStudent";
		} else if (action.equalsIgnoreCase("ADDATT")) {
			Attendance_Load latt =new Attendance_Load();

			ObjectMapper mapper4 = new ObjectMapper();

			model.addAttribute("attList", mapper4.writeValueAsString(latt.getattList()));

			result="addAtt";
		} else if (action.equalsIgnoreCase("PROMOTE")) {
			Promotion_Load latt =new Promotion_Load();

			ObjectMapper mapper4 = new ObjectMapper();

			model.addAttribute("attList", mapper4.writeValueAsString(latt.getProList()));

			result="promote";
		}
		return result;
	}

	@RequestMapping(value = "/studentAdd", method = RequestMethod.POST)
	public String stuCreate(ModelMap model, @RequestParam("fname") String fname, @RequestParam("lname") String lname,
			@RequestParam("street") String street, @RequestParam("city") String city,
			@RequestParam("province") String province, @RequestParam("zip") String zip,
			@RequestParam("email") String email, @RequestParam("mobile") String mobile, @RequestParam("dob") String dob,
			@RequestParam("ffname") String ffname, @RequestParam("flname") String flname,
			@RequestParam("femail") String femail, @RequestParam("fmobile") String fmobile,
			@RequestParam("mfname") String mfname, @RequestParam("mlname") String mlname,
			@RequestParam("memail") String memail, @RequestParam("mmobile") String mmobile,
			@RequestParam("product1") String product1, HttpServletRequest request, HttpServletResponse response) {
		String result = "";
		Integer Student_num = 0;
		System.out.println("product1 : " + product1 + " product2: " + "dob " + dob);

		System.out.println(fname + "," + lname + "," + street + "," + city + "," + province + "," + zip + "," + email
				+ "," + mobile + "," + dob + "," + ffname + "," + flname + "," + femail + "," + fmobile + "," + mfname
				+ "," + mlname + "," + memail + "," + mmobile);
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "mankirat", "apply123");
			CallableStatement stmt = con.prepareCall("{call kungfu_stu.add_stu(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)}");
			stmt.setString(1, fname);
			stmt.setString(2, lname);
			stmt.setString(3, street);
			stmt.setString(4, city);
			stmt.setString(5, province);
			stmt.setString(6, zip);
			stmt.setString(7, email);
			stmt.setString(8, mobile);
			stmt.setString(9, dob);
			stmt.setString(10, ffname);
			stmt.setString(11, flname);
			stmt.setString(12, femail);
			stmt.setString(13, fmobile);
			stmt.setString(14, mfname);
			stmt.setString(15, mlname);
			stmt.setString(16, memail);
			stmt.setString(17, mmobile);
			stmt.setString(18, product1 + ",");
			stmt.registerOutParameter(19, java.sql.Types.INTEGER);

			stmt.execute();
			System.out.println(stmt.getInt(19));
			Student_num = stmt.getInt(19);
			result="Student created with Student Number: "+Student_num;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			result="Error occured while creation.. Enter details again.";

			e.printStackTrace();
			result="Error occured while creation.. Enter details again.";

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			result="Student already exists.";

			e.printStackTrace();
			result="Student already exists..";

		}
		model.addAttribute("error", result);

		return "studentCreation";

	}

	@RequestMapping(value = "/attendance", method = RequestMethod.POST)
	public String addAtt(ModelMap model, @RequestParam("snum") String snum, @RequestParam("clevel") String clevel,
			@RequestParam("aton") String aton, HttpServletRequest request, HttpServletResponse response) throws JsonProcessingException {
		String result = "";
		Integer Student_num = 0;
		Integer classid=0;
		System.out.println("snum: "+snum+"classid :"+clevel+"aton: "+aton);
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "mankirat", "apply123");
			Statement stmt = con.createStatement();
			Integer count=0;
			String query = "select count(1) from student where stu_num='"+snum+"'";
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				count=rs.getInt(1);
			}
			if(count==1) {

				CallableStatement stmt1 = con.prepareCall("{call kungfu_stu.add_att(?,?,?)}");
				stmt1.setString(1, snum);
				stmt1.setString(2, clevel);
				stmt1.setString(3, aton);
				stmt1.execute();
				result="Attendance added from Student: "+snum;

			}
			else
				result="Student number "+snum+" does not exist!!";

			
			
			con.close();

		
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			result="Error occured while addition.. Enter details again.";

			e.printStackTrace();
			result="Error occured while addition.. Enter details again.";

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			result="Enter again...";

			e.printStackTrace();
			result="Enter again..";

		}
		model.addAttribute("error", result);
		
		Attendance_Load latt =new Attendance_Load();

		ObjectMapper mapper4 = new ObjectMapper();

		model.addAttribute("attList", mapper4.writeValueAsString(latt.getattList()));

		return "addAtt";

	}

	@RequestMapping(value = "/filteratt", method = RequestMethod.POST)
	public String filterAtt(ModelMap model, @RequestParam("fdate") String fdate, @RequestParam("tdate") String tdate,
			HttpServletRequest request, HttpServletResponse response) throws JsonProcessingException {
		String result = "";
		Integer Student_num = 0;
		Integer classid=0;
//		System.out.println("snum: "+snum+"classid :"+clevel+"aton: "+aton);
		
		model.addAttribute("error", result);
		
		Att_Filter latt =new Att_Filter(fdate,tdate);

		ObjectMapper mapper4 = new ObjectMapper();

		model.addAttribute("attList", mapper4.writeValueAsString(latt.getattList()));

		return "addAtt";

	}
	@RequestMapping(value = "/promoAdd", method = RequestMethod.POST)
	public String addPromo(ModelMap model, @RequestParam("snum") String snum, 
			@RequestParam("aton") String aton, HttpServletRequest request, HttpServletResponse response) throws JsonProcessingException {
		String result = "";
		Integer Student_num = 0;
		Integer classid=0;
		System.out.println("snum: "+snum+"aton: "+aton);
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "mankirat", "apply123");
			Statement stmt = con.createStatement();
			Integer count=0;
			String query = "select count(1) from student where stu_num='"+snum+"'";
			ResultSet rs = stmt.executeQuery(query);
			while (rs.next()) {
				count=rs.getInt(1);
			}
			if(count==1) {

			
				CallableStatement stmt1 = con.prepareCall("{call kungfu_stu.add_promo(?,?)}");
				stmt1.setString(1, snum);
				stmt1.setString(2, aton);
				stmt1.execute();
				result="Promoted Student: "+snum;

			}
			else
				result="Student number "+snum+" does not exist!!";

			
			
			con.close();

		
			
			//result="Student created with Student Number: "+Student_num;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			result="Error occured while addition.. Enter details again.";

			e.printStackTrace();
			result="Error occured while addition.. Enter details again.";

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			result="Enter again...";

			e.printStackTrace();
			result="Enter again..";

		}
		model.addAttribute("error", result);
		
		Promotion_Load latt =new Promotion_Load();

		ObjectMapper mapper4 = new ObjectMapper();

		model.addAttribute("attList", mapper4.writeValueAsString(latt.getProList()));

		return"promote";

	}

	@RequestMapping(value = "/filterp", method = RequestMethod.POST)
	public String filterp(ModelMap model, @RequestParam("s_num") String s_num,
			HttpServletRequest request, HttpServletResponse response) throws JsonProcessingException {
		String result = "";
		Integer Student_num = 0;
		Integer classid=0;
		
		model.addAttribute("error", result);
		
		Promotion_Filter latt =new Promotion_Filter(s_num);

		ObjectMapper mapper4 = new ObjectMapper();

		model.addAttribute("attList", mapper4.writeValueAsString(latt.getPList()));

		return "promote";

	}
	
}