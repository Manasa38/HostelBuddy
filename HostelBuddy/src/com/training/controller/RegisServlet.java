package com.training.controller;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dao.Registerdao;
import com.training.bean.RegisterBean;
@WebServlet("/RegisServlet")
public class RegisServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisServlet() {
       
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//Copying all the input parameters in to local variables
		 
		 String userName = request.getParameter("userName");
		 String password = request.getParameter("password");
		 String city = request.getParameter("city");
		 String state = request.getParameter("state");
		 String number = request.getParameter("number");
		 String email = request.getParameter("email");
		 String userType=request.getParameter("userType");;

		 RegisterBean registerBean = new RegisterBean();
		//Using Java Beans - An easiest way to play with group of related data

		 registerBean.setUserName(userName);
		 registerBean.setPassword(password);
		 registerBean.setCity(city);
		 registerBean.setState(state);
		 registerBean.setNumber(number);
		 registerBean.setEmail(email);
		 registerBean.setUserType(userType);


		 Registerdao registerDao = new Registerdao();
		  
		//The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String userRegistered = registerDao.registerUser(registerBean);
		  
		    //On success, you can display a message to user on Home page
		 if (userRegistered.equals("SUCCESS")){
		 request.getRequestDispatcher("login.html").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errorMessage", userRegistered);
		 request.getRequestDispatcher("RegisterUser.jsp").forward(request, response);
		 }
		
	}

}
