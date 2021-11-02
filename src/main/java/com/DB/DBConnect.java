package com.DB;

import java.sql.DriverManager;


import java.sql.Connection;

public class DBConnect {

	private static  Connection conn;
	
	public static Connection getConn() {
		
		try {
			if(conn==null)
				
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","Rajam#123");
			}
		} catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		return conn;
		
	}

	
}