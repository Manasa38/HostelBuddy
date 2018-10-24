package com.training.controller;
import java.io.*;


import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.util.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import utill.DBconnection;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @return 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");  
        PrintWriter out=response.getWriter();  
          
        request.getRequestDispatcher("Search.jsp").include(request, response);  
          
        Cookie ck[]=request.getCookies();  
        if(ck!=null){  
         String name=ck[0].getValue();  
        if(!name.equals("")||name!=null){  
            
            return;
        }  
        }else{  
            out.print("Please login first");  
            request.getRequestDispatcher("login.html").include(request, response);  
        }  
        out.close();  
	}

	/**
	 * @param hn 
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		response.setContentType("text/html");
		  @SuppressWarnings("unused")
		PrintWriter out = response.getWriter();

		  System.out.println("MySQL Connect Example.");
		  Connection conn = null;
		  conn = DBconnection.createConnection(); 
		  
		  Statement st;
		  try {
		
		//  conn = DriverManager.getConnection(url+dbName,userName,password);
		  System.out.println("Connected to the database");
		  
		  String  city  = request.getParameter("city");
		  String gender  = request.getParameter("gender");
		  String rating  = request.getParameter("rating");

		  String  type  = request.getParameter("type");
		  String  min  = request.getParameter("min");
		  String  max  = request.getParameter("max");

		  ArrayList<String> al=null;
		  ArrayList<ArrayList<String>> list =new ArrayList<ArrayList<String>>();
		  String query = 
		  "SELECT hostelname,price,rating,address FROM hostel_info where city like'"+city+"'and rating like '"+rating+"'and gender like '"+gender+"' and type like'"+type+"' and price between '"+min+"'and'"+max+"'order by city";
		  System.out.println("query " + query);
		  st = conn.createStatement();
		  ResultSet  rs = st.executeQuery(query);


		  while(rs.next()){
		  al  = new ArrayList<String>();
		 // String hn1 =rs.getString(1);
		  al.add(rs.getString(1));
		  al.add(rs.getString(2));
		  al.add(rs.getString(3));
		  al.add(rs.getString(4));

		  System.out.println("al :: "+al);
		  list.add(al);
		  }

		  request.setAttribute("list",list);
		//  request.setAttribute("hostelname",hn);

		 System.out.println("list " + list);

		  // out.println("emp_list " + emp_list);

		  String nextJSP = "/Result.jsp";
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
