package com.nikhil.beans;

public class ContactBean {
	
	public String Name;
	public String Email_id;
	public String Phone_no;
	public String Message;
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail_id() {
		return Email_id;
	}
	public void setEmail_id(String email_id) {
		Email_id = email_id;
	}
	public String getPhone_no() {
		return Phone_no;
	}
	public void setPhone_no(String phone_no) {
		Phone_no = phone_no;
	}
	public String getMessage() {
		return Message;
	}
	public void setMessage(String message) {
		Message = message;
	}
	@Override
	public String toString() {
		return "ContactBean [Name=" + Name + ", Email_id=" + Email_id + ", Phone_no=" + Phone_no + ", Message="
				+ Message + "]";
	}

}
