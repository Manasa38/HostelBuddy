package com.training.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utill.DBconnection;

/**
 * Servlet implementation class Viewupdate
 */
@WebServlet("/Viewupdate")
public class Viewupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Viewupdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		response.setContentType("text/html");
		  PrintWriter out = response.getWriter();

		  System.out.println("MySQL Connect Example.");
		  Connection conn = null;
		  conn = DBconnection.createConnection(); 
		  
		  Statement st;
		  try {
		 // Class.forName(driver).newInstance();
		//  conn = DriverManager.getConnection(url+dbName,userName,password);
		  System.out.println("Connected to the database");
		 
		 
		 

		  ArrayList<String> al=null;
		  ArrayList<ArrayList<String>> list =new ArrayList<ArrayList<String>>();
		  String query = 
		  "select * from hostel_info";
		  System.out.println("query " + query);
		  st = conn.createStatement();
		  ResultSet  rs = st.executeQuery(query);


		  while(rs.next()){
		  al  = new ArrayList<String>();
		  
		  al.add(rs.getString(1));
		  al.add(rs.getString(2));
		  al.add(rs.getString(3));
		  al.add(rs.getString(4));
		  al.add(rs.getString(5));
		  al.add(rs.getString(6));
		  al.add(rs.getString(7));
		  al.add(rs.getString(8));
		  al.add(rs.getString(9));
		
		  System.out.println("al :: "+al);
		  list.add(al);
		  }

		  request.setAttribute("list",list);
		  
		 System.out.println("list " + list);

		  // out.println("emp_list " + emp_list);

		  String nextJSP = "/ViewAdmin.jsp";
		  RequestDispatcher dispatcher = 
		   getServletContext().getRequestDispatcher(nextJSP);
		  dispatcher.forward(request,response);
		  conn.close();
		  System.out.println("Disconnected from database");
		  }
		  catch (Exception e) {
			  e.printStackTrace();
			  }
		  
	}

}
