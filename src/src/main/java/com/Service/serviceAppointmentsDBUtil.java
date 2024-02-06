package com.Service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Service.configDB;

public class serviceAppointmentsDBUtil {

	private static boolean isSuccess;
	private static Connection conn = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	// insert Appointment
	public static boolean insert_serviceAppointments(String fname, String lname, String contactNum, String vehicleType,
			String vehicleNum, String branch, String dateTime, String sType) {
		boolean isaSuccess = false;

		try {
			conn = configDB.getConnection();
			stmt = conn.createStatement();
			String sql = "insert into autodrive.serviceappointment values (0,'" + fname + "', '" + lname + "','" + contactNum + "','" + vehicleType
					+ "','" + vehicleNum + "','" + branch + "','" + dateTime + "','" + sType + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

	// update the Appointment
	public static boolean update_serviceAppointments (int aptID,String fname, String lname, String contactNum, String vehicleType,
			String vehicleNum, String branch, String dateTime, String sType) {
		boolean isSuccess = false;
		
		try {
			conn = configDB.getConnection();
			stmt = conn.createStatement();
			String sql = "update autodrive.serviceappointment set fname = '"+fname+"', lname = '"+lname+"', contactNum = '"+contactNum+"', vehicleType = '"+vehicleType+"', vehicleNum = '"+vehicleNum+"', Branch = '"+branch+"',dateTime = '"+dateTime+"', sType = '"+sType+"' where aptID = '"+aptID+"' "; 
			int rs = stmt.executeUpdate(sql);
			
			if(rs > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
}
			
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return isSuccess;
			
}

// delete the Appointment
	public static boolean delete_serviceAppointments(int aptID) {
		boolean isSuccss = false;

		try {
			conn = configDB.getConnection();
			stmt = conn.createStatement();
			String sql = "delete from autodrive.serviceappointment where aptID='"+aptID+"' ";
			int rs = stmt.executeUpdate(sql);
			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

	

		
}