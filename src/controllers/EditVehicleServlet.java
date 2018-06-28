package controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.EditVehicles;
import models.Vehicle;

/**
 * Servlet implementation class EditVehicleServlet
 */
public class EditVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditVehicleServlet() {
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
		
		String idString = request.getParameter("id");
		int id = Integer.parseInt(idString);
		String type = request.getParameter("type");
		String brand = request.getParameter("brand");
		String model = request.getParameter("model");
		String year = request.getParameter("year");
		String reg_no = request.getParameter("reg_no");
		String color = request.getParameter("color");
		String no_of_seats = request.getParameter("no_of_seats");
		String chassis_no= request.getParameter("chassis_no");
		String engine_no = request.getParameter("engine_no");
		String mileage= request.getParameter("mileage");
		String insurance_coverage = request.getParameter("insuarance_coverage");
		String rate= request.getParameter("rate");
		
		Vehicle vehicle = new Vehicle();
		vehicle.setId(id);
		vehicle.setType(type);
		vehicle.setBrand(brand);
		vehicle.setModel(model);
		vehicle.setYear(year);
		vehicle.setReg_no(reg_no);
		vehicle.setColor(color);
		vehicle.setNo_of_seats(no_of_seats);
		vehicle.setChassis_no(chassis_no);
		vehicle.setEngine_no(engine_no);
		vehicle.setMileage(mileage);
		vehicle.setInsuarance_coverage(insurance_coverage);
		vehicle.setRate(rate);
		
		//Setup am EmpAddQuery object
		EditVehicles obj = new EditVehicles();
		
		//Pass the Employee to EmpAddQuery to add to the database
		obj.updateData(vehicle);
		
		//Pass execution control to the ReadServlet
		//String url = "/CustomerHome.jsp";
		
		response.sendRedirect(request.getHeader("referer"));
	}

}
