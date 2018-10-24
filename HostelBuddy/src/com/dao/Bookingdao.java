package com.dao;

import java.sql.SQLException;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import utill.DBconnection;

public class Bookingdao {
	
	private String id;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	public void saveData() {
		// TODO Auto-generated method stub
		
java.sql.Connection connection = null;
		
		try {
			connection = DBconnection.createConnection(); 
			java.sql.Statement statement = connection.createStatement();
			String str = "approved";
			statement.executeUpdate(" update leave_sheet set approved =  '"+str+"' where emp_id = '"+getId()+"' ");
			System.out.println("updated");
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

}
}
