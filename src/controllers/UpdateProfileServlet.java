package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.UpdateProfile;
import models.Customer;

/**
 * Servlet implementation class UpdateProfileServlet
 */
public class UpdateProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String idString = request.getParameter("id");
		int id = Integer.parseInt(idString);
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
		customer.setId(id);
		customer.setName(name);
		customer.setEmail(email);
		customer.setAddress(address);
		customer.setSex(sex);
		customer.setBday(bday);
		customer.setTelephone(tel);
		customer.setUsername(username);
		customer.setPassword(password);
		
		//Setup am EmpAddQuery object
		UpdateProfile obj = new UpdateProfile();
		
		//Pass the Employee to EmpAddQuery to add to the database
		obj.updateData(customer);
		
		//Pass execution control to the ReadServlet
		//String url = "/CustomerHome.jsp";
		
		response.sendRedirect(request.getHeader("referer"));
		
	}

}
