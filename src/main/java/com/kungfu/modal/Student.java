package com.kungfu.modal;

public class Student {
	private String fname;
	private String lname;
	private Integer stu_num;
	private String Address;
	private String email;
	private String dob;
	private String joining_date;
	private String mobile;
	private String rank;

	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public Integer getStu_num() {
		return stu_num;
	}

	public void setStu_num(Integer stu_num) {
		this.stu_num = stu_num;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		this.Address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getJoining_date() {
		return joining_date;
	}

	public void setJoining_date(String joining_date) {
		this.joining_date = joining_date;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public Student(Integer Stu_num, String fname, String lname, String Address, String email, String dob,
			String joining_date, String mobile, String rank) {
		this.fname = fname;
		this.lname = lname;
		this.stu_num = Stu_num;
		this.Address = Address;
		this.email = email;
		this.dob = dob;
		this.joining_date = joining_date;
		this.mobile = mobile;
		this.rank = rank;

	}

}
