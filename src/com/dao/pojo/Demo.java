package com.dao.pojo;

public class Demo {
	
	private int id;

	private String name;
	
	private String email;
	
	private String number;
	
	private String address;
	
	private String course;
	
	private String date;
	
	private String scheduleDate;
	private boolean isSchedule;
public Demo() {
		
	}

	public Demo(int id,String name, String email, String number, String address, String course) {
		super();
		this.id=id;
		this.name = name;
		this.email = email;
		this.number = number;
		this.address = address;
		this.course = course;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getScheduleDate() {
		return scheduleDate;
	}

	public void setScheduleDate(String scheduleDate) {
		this.scheduleDate = scheduleDate;
	}
	public boolean getIsSchedule() {
	    return isSchedule;
	}

	public void setIsSchedule(boolean isSchedule) {
	    this.isSchedule = isSchedule;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	
	
}
