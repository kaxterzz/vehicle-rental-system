package controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.CustomerViewQuery;
import dbhelpers.DisplayVehiclesQuery;
import models.Customer;
import models.Vehicle;

/**
 * Servlet implementation class CustomerProfileController
 */
public class CustomerProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerProfileController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		CustomerViewQuery cvq = new CustomerViewQuery();
		
		try {
            List<Customer> customers = cvq.list(name);
            request.setAttribute("customers", customers); // Will be available as ${products} in JSP
            request.getRequestDispatcher("CustomerProfile.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Cannot obtain vehicles from DB", e);
        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	

}
