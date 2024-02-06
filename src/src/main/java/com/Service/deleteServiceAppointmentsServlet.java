package com.Service;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class deleteServiceAppointmentsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("delete");
		int aptID = Integer.parseInt(id);
		
		boolean isTrue = serviceAppointmentsDBUtil.delete_serviceAppointments(aptID);
		
		if(isTrue == true) {
			response.sendRedirect("admin/serviceAppointmentControl.jsp");
		}
		
		else {
			response.sendRedirect("admin/serviceAppoinmentControl1.jsp");
		}
	}

}
