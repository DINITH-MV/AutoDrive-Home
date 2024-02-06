package com.Service;

import java.util.Date;

public class WashingServiceAppointment {

	int aptID;
	String fname;
	String lname;
	String contactNum;
	String VehicleType;
	String VehicleNum;
	String Branch;
	Date dateTime;
	String sType;
	
	public WashingServiceAppointment(String fname, String lname, String contactNum, String vehicleType,
			String vehicleNum, String branch, Date dateTime, String sType) {
		super();
		this.aptID = aptID;
		this.fname = fname;
		this.lname = lname;
		this.contactNum = contactNum;
		VehicleType = vehicleType;
		VehicleNum = vehicleNum;
		Branch = branch;
		this.dateTime = dateTime;
		this.sType = sType;
	}

	public int getServiceAppointmentID() {
		return aptID;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getContactNum() {
		return contactNum;
	}

	public String getVehicleType() {
		return VehicleType;
	}

	public String getVehicleNum() {
		return VehicleNum;
	}

	public String getBranch() {
		return Branch;
	}

	public Date getDateTime() {
		return dateTime;
	}

	public String getsType() {
		return sType;
	}

	
	
	
	
	

}
