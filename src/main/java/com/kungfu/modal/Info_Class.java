package com.kungfu.modal;

public class Info_Class {
	private String clevel;
	private String ctime;
	private String cday;

	public String getPname() {
		return clevel;
	}

	public void setPname(String class_level) {
		this.clevel = class_level;
	}

	public String getSname() {
		return ctime;
	}

	public void setSname(String class_time) {
		this.ctime = class_time;
	}

	public String getRelation() {
		return cday;
	}

	public void setRelation(String class_day) {
		this.cday = class_day;
	}

	public Info_Class(String class_level, String class_time, String class_day) {
		this.clevel = class_level;
		this.ctime = class_time;
		this.cday = class_day;
	}
}
