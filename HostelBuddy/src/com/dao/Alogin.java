package com.dao;
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.training.bean.UserBean;
import utill.DBconnection;

public class Alogin {
	public String authenticateUser(UserBean user) {
		String email ="sonymanasa135@gmail.com"; //Keeping user entered values in temporary variables.
		String password = "8125962724";
		String usertype = "admin";

		Connection con = null;
		Statement statement = null;
		ResultSet resultSet = null;

		System.out.println(email + " " + password + " ");
		try
		{
		con = DBconnection.createConnection(); //establishing connection
		statement = con.createStatement(); //Statement is used to write queries. Read more about it.
		String q ="select * from users where email like "+email+"' and password like'"+password+"'";
		resultSet = statement.executeQuery(q);
		if(resultSet.next()) // Until next row is present otherwise it return false
		{
			return "SUCCESS";
		}
		
		}catch (Exception e) {
			  e.printStackTrace();
			  }
		return null;
	}
}
