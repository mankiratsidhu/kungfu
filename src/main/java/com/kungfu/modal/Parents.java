package com.kungfu.modal;

public class Parents {
	private String Pname;
	private String Sname;
	private String par_relation;

	public String getPname() {
		return Pname;
	}

	public void setPname(String pname) {
		this.Pname = pname;
	}

	public String getSname() {
		return Sname;
	}

	public void setSname(String sname) {
		this.Sname = sname;
	}

	public String getRelation() {
		return par_relation;
	}

	public void setRelation(String par_relation) {
		this.par_relation = par_relation;
	}

	public Parents(String Pname, String Sname, String par_relation) {
		this.Pname = Pname;
		this.Sname = Sname;
		this.par_relation = par_relation;
	}

}
