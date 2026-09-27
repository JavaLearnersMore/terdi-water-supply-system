package com.nikhil.beans;
import java.util.Map;

import org.springframework.stereotype.Component;

@Component
public class PayFormBean {

	String user_id;
	String user_name;
	String bill_no;
	String amount;
	String  month;
	String payment_date;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getBill_no() {
		return bill_no;
	}
	public void setBill_no(String bill_no) {
		this.bill_no = bill_no;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getMonth() {
		return month;
	}
	public void setMonth(String formattedMonth) {
		this.month = formattedMonth;
	}
	public String getPayment_date() {
		return payment_date;
	}
	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}
	@Override
	public String toString() {
		return "PayFormBean [user_id=" + user_id + ", user_name=" + user_name + ", bill_no=" + bill_no + ", amount="
				+ amount + ", month=" + month + ", payment_date=" + payment_date + "]";
	}
}
