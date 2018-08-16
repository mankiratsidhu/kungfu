package com.kungfu.modal;

public class Payment {

	private String stu_num;
	private String name;
	private String product;
	private String amount;
	private String paydate;

	public String getPaydate() {
		return paydate;
	}

	public void setPaydate(String paydate) {
		this.paydate = paydate;
	}

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

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public Payment(String stu_num, String name, String product, String amount, String paydate) {
		this.stu_num = stu_num;
		this.name = name;
		this.product = product;
		this.amount = amount;
		this.paydate = paydate;
	}

}
