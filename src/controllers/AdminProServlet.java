package controllers;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.AdminProView;
import models.Administrator;

/**
 * Servlet implementation class AdminProServlet
 */
public class AdminProServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminProServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String name = request.getParameter("name");
		AdminProView adminV = new AdminProView();

		 try {
		   //not list required this time, created a new method called 'getCustomer'
			Administrator admin = adminV.getAdmin(name);
		    request.setAttribute("admin", admin); 
		    request.getRequestDispatcher("AdminProfile.jsp").forward(request, response);

		     } catch (SQLException e) {
		    throw new ServletException("Cannot obtain vehicles from DB", e);
		     }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
