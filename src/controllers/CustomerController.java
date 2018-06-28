package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.CustomerAddQuery;
import models.Customer;

/**
 * Servlet implementation class CustomerController
 */
public class CustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		//Get the data
				String name = request.getParameter("name");
				String email = request.getParameter("email");
				String address = request.getParameter("address");
				String sex = request.getParameter("sex");
				String bday = request.getParameter("bday");
				String tel = request.getParameter("tele");
				String username = request.getParameter("username");
				String password= request.getParameter("password");
				
				//Setup an Employee object
				Customer customer = new Customer();
				customer.setName(name);
				customer.setEmail(email);
				customer.setAddress(address);
				customer.setSex(sex);
				customer.setBday(bday);
				customer.setTelephone(tel);
				customer.setUsername(username);
				customer.setPassword(password);
				
				//Setup am EmpAddQuery object
				CustomerAddQuery obj = new CustomerAddQuery();
				
				//Pass the Employee to EmpAddQuery to add to the database
				obj.addData(customer);
				
				//Pass execution control to the ReadServlet
				String url = "/index.jsp";
				
				RequestDispatcher dispatcher = request.getRequestDispatcher(url);
				dispatcher.forward(request, response);
	}

}
