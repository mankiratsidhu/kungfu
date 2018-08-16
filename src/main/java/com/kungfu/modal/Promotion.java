package com.kungfu.modal;

public class Promotion {
	private String stu_num;
	private String name;
	private String rank;
	private String award_date;
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
	public String getRank() {
		return rank;
	}
	public void setRank(String rank) {
		this.rank = rank;
	}
	public String getAward_date() {
		return award_date;
	}
	public void setAward_date(String award_date) {
		this.award_date = award_date;
	}
	
	public Promotion(String stu_num, String name, String rank, String award_date) {
		this.stu_num = stu_num;
		this.name = name;
		this.rank = rank;	
		this.award_date = award_date;

	}
}
