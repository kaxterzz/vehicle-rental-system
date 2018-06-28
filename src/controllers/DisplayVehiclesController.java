package controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.DisplayVehiclesQuery;
import models.Vehicle;

/**
 * Servlet implementation class DisplayVehiclesController
 */
public class DisplayVehiclesController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayVehiclesController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		DisplayVehiclesQuery dvhq = new DisplayVehiclesQuery();
		
		try {
            List<Vehicle> vehicles = dvhq.list();
            request.setAttribute("vehicles", vehicles); // Will be available as ${products} in JSP
            request.getRequestDispatcher("ViewVehicles.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Cannot obtain vehicles from DB", e);
        }
	}

}
