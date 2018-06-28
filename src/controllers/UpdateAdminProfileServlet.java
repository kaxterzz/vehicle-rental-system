package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.UpdateAdminPro;
import models.Administrator;

/**
 * Servlet implementation class UpdateAdminProfileServlet
 */
public class UpdateAdminProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAdminProfileServlet() {
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
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Administrator admin = new Administrator();
		admin.setId(id);
		admin.setName(name);
		admin.setEmail(email);
		admin.setUsername(username);
		admin.setPassword(password);
		
		//Setup am EmpAddQuery object
		UpdateAdminPro obj = new UpdateAdminPro();
		
		//Pass the Employee to EmpAddQuery to add to the database
		obj.updateData(admin);
		
		//Pass execution control to the ReadServlet
		//String url = "/CustomerHome.jsp";
		
		response.sendRedirect(request.getHeader("referer"));
		
	}

}
