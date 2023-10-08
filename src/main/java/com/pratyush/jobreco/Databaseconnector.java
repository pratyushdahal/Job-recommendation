package com.pratyush.jobreco;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class Databaseconnector {

	public static Connection connection;
	
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/job_recommendation?user=root&password=";
			connection = DriverManager.getConnection(url);
			

		} catch (Exception e) {
			System.out.println(e);
		}
	}
//
//	public Statement createStatement() {
//		try {
//			return connection.createStatement();
//		} catch (SQLException sqex) {
//			sqex.printStackTrace();
//	}
//	}
	
}
