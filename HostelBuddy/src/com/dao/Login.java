package com.dao;

import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import com.training.bean.UserBean;
import utill.DBconnection;
public class Login {
public String authenticateUser(UserBean user) {
String userName = user.getUserName(); //Keeping user entered values in temporary variables.
String password = user.getPassword();
Connection con = null;
Statement statement = null;
ResultSet resultSet = null;

System.out.println(userName + " " + password);
try
{
con = DBconnection.createConnection(); //establishing connection
statement = con.createStatement(); //Statement is used to write queries. Read more about it.
resultSet = statement.executeQuery("select * from users where userName='"+userName+"' and password='"+password+"' "); //Here table name is users and userName,password are columns. fetching all the records and storing in a resultSet.
if(resultSet.next()) // Until next row is present otherwise it return false
{
	return "SUCCESS";
}else{
	return "Invalid user credentials";
}
}catch(SQLException e)
{
e.printStackTrace();
}
return "Invalid user credentials"; // Just returning appropriate message otherwise
}
}
