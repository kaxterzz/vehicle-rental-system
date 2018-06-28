package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.DeleteVehicle;
import models.Vehicle;

/**
 * Servlet implementation class DeleteVehicleServlet
 */
public class DeleteVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteVehicleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
    	
    	String idString = request.getParameter("id");
		int id = Integer.parseInt(idString);
		
		Vehicle vehicle = new Vehicle();
		vehicle.setId(id);
		
		//Setup am EmpAddQuery object
		DeleteVehicle obj = new DeleteVehicle();
		
		//Pass the Employee to EmpAddQuery to add to the database
		obj.deleteData(vehicle);
		
		//Pass execution control to the ReadServlet
		//String url = "/CustomerHome.jsp";
		
		response.sendRedirect(request.getHeader("referer"));
	}

}
