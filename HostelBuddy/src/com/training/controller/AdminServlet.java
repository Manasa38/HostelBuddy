package com.training.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Alogin;
import com.training.bean.UserBean;

/**
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	        String password = request.getParameter("password");
			String email = request.getParameter("email");

			 UserBean user = new UserBean();
			 user.setPassword(password);
			 user.setEmail(email);
	        Alogin login = new Alogin();
			 String userValidate = login.authenticateUser(user);

			
			 if(userValidate.equals("SUCCESS")) 
			 { 			
				 request.getRequestDispatcher("/AdminChoice.html").include(request, response);
					 HttpSession session=request.getSession(); 
			        session.getAttribute("userName");  
			         
			 }else{
				 out.print("sorry, username or password error!");  
		       //  request.getRequestDispatcher("/Home.jsp").include(request, response); 
			 } 
			 out.close();  
		 
	}

}
