package utill;

import java.sql.Connection;
import java.sql.DriverManager;



public class DBconnection {
	public static Connection createConnection()
	 {
	 Connection con = null;
	 String url = "jdbc:mysql://localhost:3306/hb"; //MySQL URL followed by the database name
	 String username = "root"; //MySQL username
	 String password = "manasa8125962724"; //MySQL password
	 
	 try
	 {
	 try
	 {
	 Class.forName("com.mysql.jdbc.Driver"); //loading MySQL drivers
	 }
	 catch (ClassNotFoundException e)
	 {
	 e.printStackTrace();
	 }
	 
	 con = DriverManager.getConnection(url, username, password); //attempting to connect to MySQL database
	 System.out.println("Printing connection object "+con);
	 }
	 catch (Exception e)
	 {
	 e.printStackTrace();
	 }
	 return con;
	 }
	

}
