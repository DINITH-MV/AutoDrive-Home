package com.Service;

import jakarta.servlet.RequestDispatcher;


import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

public class EngineCareAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String contactNum = request.getParameter("contactNum");
		String VehicleType = request.getParameter("VehicleType");
		String VehicleNum = request.getParameter("VehicleNum");
		String Branch = request.getParameter("branch");
		String dateTime = request.getParameter("dateTime");
		String sType = request.getParameter("sType");
		
		boolean isTrue = serviceAppointmentsDBUtil.insert_serviceAppointments(fname, lname, contactNum, VehicleType, VehicleNum, Branch, dateTime, sType);
		
		if(isTrue == true) {
			response.sendRedirect("EngineCare.jsp");
		}
		else {
			response.sendRedirect("EngineCare1.jsp");
		}
	}

}
