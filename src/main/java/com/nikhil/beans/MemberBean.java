package com.nikhil.beans;

import org.springframework.stereotype.Component;

@Component
public class MemberBean {
	

	public String id;
	public String first_name;
	public String middle_name;
	public String last_name;
	public String village;

	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	public String getVillage() {
		return village;
	}
	public void setVillage(String village) {
		this.village = village;
	}	
	@Override
	public String toString() {
		return "MemberBean [id=" + id + ", first_name=" + first_name + ", middle_name="
				+ middle_name + ", last_name=" + last_name + ", village=" + village + "]";
	}
}
