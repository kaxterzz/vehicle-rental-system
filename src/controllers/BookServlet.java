package controllers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dbhelpers.AddBook;
import dbhelpers.AddVehicleQuery;
import models.Booking;
import models.Vehicle;

/**
 * Servlet implementation class BookServlet
 */
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String from_date = request.getParameter("from_date");
		String to_date = request.getParameter("to_date");
		String name = request.getParameter("name");
		String contact_number = request.getParameter("contact_number");
		String type = request.getParameter("type");
		String brand = request.getParameter("brand");
		String model = request.getParameter("model");
		String color= request.getParameter("color");
		String no_of_seats = request.getParameter("no_of_seats");
		String insurance_coverage= request.getParameter("insurance_coverage");
		String rate = request.getParameter("rate");
		String date_today = request.getParameter("date_today");
		
		Booking booking = new Booking();
		booking.setFrom_date(from_date);
		booking.setTo_date(to_date);
		booking.setName(name);
		booking.setContact_number(contact_number);
		booking.setType(type);
		booking.setBrand(brand);
		booking.setModel(model);
		booking.setColor(color);
		booking.setNo_of_seats(no_of_seats);
		booking.setInsurance_coverage(insurance_coverage);
		booking.setRate(rate);
		booking.setBooked_date(date_today);
		
		//Setup am EmpAddQuery object
		AddBook obj = new AddBook();
		
		//Pass the Employee to EmpAddQuery to add to the database
		obj.addData(booking);
		
		//Pass execution control to the ReadServlet
		String url = "/CustomerHome.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
	}

}
