package com.kungfu.modal;

public class Att_stu {
	private String stu_num;
	private String name;
	private String class_level;
	private String att_date;

	public String getStu_num() {
		return stu_num;
	}

	public void setStu_num(String stu_num) {
		this.stu_num = stu_num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getClass_level() {
		return class_level;
	}

	public void setClass_level(String class_level) {
		this.class_level = class_level;
	}

	public String getAtt_date() {
		return att_date;
	}

	public void setAtt_date(String att_date) {
		this.att_date = att_date;
	}

	
	public Att_stu(String stu_num, String name, String class_level, String att_date) {
		this.stu_num = stu_num;
		this.name = name;
		this.class_level = class_level;	
		this.att_date = att_date;

	}


}
