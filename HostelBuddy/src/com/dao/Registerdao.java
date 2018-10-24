package com.dao;
 
import java.sql.Connection;


import java.sql.SQLException;

import com.training.bean.RegisterBean;

import java.sql.PreparedStatement;
import utill.DBconnection;
 
public class Registerdao {
 

public String registerUser(RegisterBean registerBean)
 {
	
 String userName = registerBean.getUserName();

 String password = registerBean.getPassword();
 //String confirmpassword = registerBean.getConfirmpassword();
 String city = registerBean.getCity();
 String State = registerBean.getState();
 String number =registerBean.getNumber();
 String email =registerBean.getEmail();
 Connection con = null;
 PreparedStatement preparedStatement = null;

 try
 {
 con = DBconnection.createConnection();
 String query = "insert into users(userName,password,city,state,number,email,userType)" + " values (?,?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
 preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
 preparedStatement.setString(1, userName);
 preparedStatement.setString(2, password);
 
 preparedStatement.setString(3, city);
 preparedStatement.setString(4, State);
 preparedStatement.setString(5, number);
 preparedStatement.setString(6, email);
 preparedStatement.setString(7, "user");
 
 int i= preparedStatement.executeUpdate();
 
 if(i>0)
 {
   System.out.println("You are sucessfully registered");
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