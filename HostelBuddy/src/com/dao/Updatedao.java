package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.training.bean.HostelBean;


import utill.DBconnection;

public class Updatedao {
	public String updateHostel(HostelBean hostelBean)
	 {
		
		 String hostelname = hostelBean.getHostelname();
		 String ownername = hostelBean.getOwnername();
		 String gender = hostelBean.getGender();
		 String type = hostelBean.getType();
		 String address = hostelBean.getAddress();
		 String  city = hostelBean.getCity();
		 String  price=hostelBean.getPrice();
		 String  phoneno = hostelBean.getPhoneno();
		 String email =hostelBean.getEmail();
		 String security =hostelBean.getSecurity();
		 String rating =hostelBean.getRating();

	 Connection con = null;
	 PreparedStatement preparedStatement = null;

	 try
	 {
	 con = DBconnection.createConnection();
	 String query = "insert into hostel_info(hostelname,ownername,gender,type,address,city,price,phoneno,email,security,rating)" + " values (?,?,?,?,?,?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
	 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	 preparedStatement.setString(1,hostelname);
	 preparedStatement.setString(2,ownername);
	 preparedStatement.setString(3,gender);
	 preparedStatement.setString(4,type);
	 preparedStatement.setString(5,address);
	 preparedStatement.setString(6,city);
	 preparedStatement.setString(7,price);
	 preparedStatement.setString(8,phoneno);
	 preparedStatement.setString(9, email);
	 preparedStatement.setString(10, security);
	 preparedStatement.setString(11, rating);

	 
	 int i= preparedStatement.executeUpdate();
	 
	 if(i>0)
	 {
	   System.out.println("You are sucessfully updated");
	   return "SUCCESS";
	   
	 }
	 
		  

	}
	 catch(SQLException e)
	 {
	 e.printStackTrace();
	 }
	 
	return "Oops.. Something went wrong there..!"; 
	 }

}
