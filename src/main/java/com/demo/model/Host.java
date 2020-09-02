package com.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="host")
public class Host {

	@Id
	private int meetingid;
	private String meetingname;
	private String date;
	private String time;
	private String password;
	
	
	
	public Host() {
		
	}
	
	public Host(int meetingid, String meetingname, String date, String time, String password) {
		super();
		this.meetingid = meetingid;
		this.meetingname = meetingname;
		this.date = date;
		this.time = time;
		this.password = password;
	}
	public int getMeetingid() {
		return meetingid;
	}
	public void setMeetingid(int meetingid) {
		this.meetingid = meetingid;
	}
	public String getMeetingname() {
		return meetingname;
	}
	public void setMeetingname(String meetingname) {
		this.meetingname = meetingname;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "Host [meetingid=" + meetingid + ", meetingname=" + meetingname + ", date=" + date + ", time=" + time
				+ ", password=" + password + "]";
	}
	
	
	
	
}

