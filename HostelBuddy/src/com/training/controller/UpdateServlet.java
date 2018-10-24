package com.training.controller;
import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.Updatedao;
import com.training.bean.HostelBean;


/**
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateServlet() {
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
		 
		 String hostelname = request.getParameter("hostelname");
		 String ownername = request.getParameter("ownername");
		 String gender = request.getParameter("gender");
		 String type = request.getParameter("type");
		 String address = request.getParameter("address");
		 String  city = request.getParameter("city");
		 String  price = request.getParameter("price");
		 String  phoneno = request.getParameter("phoneno");
		 String email = request.getParameter("email");
		 String security = request.getParameter("security");
		 String rating = request.getParameter("rating");

		 HostelBean hostelBean = new HostelBean();
		 hostelBean.setHostelname(hostelname);
		 hostelBean.setOwnername(ownername);
		 hostelBean.setGender(gender);
		 hostelBean.setType(type);
		 hostelBean.setAddress(address);
		 hostelBean.setCity(city);
		 hostelBean.setPrice(price);
		 hostelBean.setPhoneno(phoneno);
		 hostelBean.setEmail(email);
		 hostelBean.setSecurity(security);
		 hostelBean.setRating(rating);



		 Updatedao  Updatedao = new Updatedao();
		  
		//The core Logic of the Registration application is present here. We are going to insert user data in to the database.
		 String updated = Updatedao.updateHostel(hostelBean);
		  
		    //On success, you can display a message to user on Home page
		 if (updated.equals("SUCCESS")){
			 
		 request.getRequestDispatcher("AdminChoice.html").forward(request, response);
		 }
		 else   //On Failure, display a meaningful message to the User.
		 {
		 request.setAttribute("errorMessage", updated);
		 request.getRequestDispatcher("Home.jsp").forward(request, response);
		 }
	}

}
