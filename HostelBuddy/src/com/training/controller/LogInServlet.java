package com.training.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.Login;
import com.training.bean.UserBean;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LogInServlet")
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInServlet() {
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html");  
	        PrintWriter out=response.getWriter();  
	          
	         
	          
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		String email = request.getParameter("email");

		 UserBean user = new UserBean();
		 user.setUserName(userName);
		 user.setPassword(password);
		 user.setEmail(email);

		 Login login = new Login();
		 String userValidate = login.authenticateUser(user);
		 System.out.println(userValidate);
		
		 if (userValidate.equals("SUCCESS") && user != null) 
		 { 
			// out.print("You are successfully logged in!");  
	        //    out.print("<br>Welcome, "+userName);  
			 
			 
				 HttpSession session=request.getSession(); 
		        session.setAttribute("userName",userName);  
		        session.setAttribute("email",email);  
		        request.getRequestDispatcher("Search.jsp").include(request, response); 
	           // Cookie ck=new Cookie("userName",userName);  
	           // response.addCookie(ck);  
			// System.out.println("Correct!!");
			// request.setAttribute("userName", userName); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
			// request.getRequestDispatcher("Search.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
		 } 
		 else 
			 {
			 out.print("sorry, username or password error!");  
	            request.getRequestDispatcher("/Home.jsp").include(request, response); 
			// request.setAttribute("errMessage", userValidate); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
			// request.getRequestDispatcher("/Home.jsp").forward(request, response);//forwarding the request 
		
		 } 
		 out.close();  
		 }	
	}


