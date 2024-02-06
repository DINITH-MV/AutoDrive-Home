package com.Service;

import java.sql.Connection;
import java.sql.DriverManager;

public class configDB {

	private static String dbUrl = "jdbc:mysql://localhost:3306/autodrive";
	private static String dbUser = "root";
	private static String dbPass = "root";
	private static Connection conn;

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dbUrl, dbUser, dbPass);

		}

		catch (Exception e) {
			System.out.println("Datebase connection Failed!!!");
		}

		return conn;

	}
}
