package com.nikhil.beans;

import java.util.Date;

public class MembersBO {
	
	public String id;
	public String role;
	public String first_name;
	public String middle_name;
	public String last_name;
	public String password;
	public String dob;
	public String address;
	public String email_id;
	public long mobile_number;
	
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	public String getMiddle_name() {
		return middle_name;
	}
	public void setMiddle_name(String middle_name) {
		this.middle_name = middle_name;
	}
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail_id() {
		return email_id;
	}
	public long getMobile_number() {
		return mobile_number;
	}
	public void setMobile_number(long mobile_number) {
		this.mobile_number = mobile_number;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "MembersBO [id=" + id + ", role=" + role + ", first_name=" + first_name + ", middle_name=" + middle_name
				+ ", last_name=" + last_name + ", password=" + password + ", dob=" + dob + ", address=" + address
				+ ", email_id=" + email_id + ", mobile_number=" + mobile_number + "]";
	}


	
	
	
	
}
