package controllers;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbhelpers.DisplayBookings;
import dbhelpers.DisplayVehiclesQuery;
import dbhelpers.LoginAdminQuery;
import dbhelpers.LoginQuery;
import models.Administrator;
import models.LoginBean;
import models.Vehicle;
import models.Booking;

/**
 * Servlet implementation class LoginController
 */
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		 
		LoginBean loginBean = new LoginBean();
		Administrator loginAdmin = new Administrator();
		//creating object for LoginBean class, which is a normal java class, contains just setters and getters. Bean classes are efficiently used in java to access user information wherever required in the application.
		 
		loginBean.setUsername(userName); //setting the username and password through the loginBean object then only you can get it in future.
		loginBean.setPassword(password);
		loginAdmin.setUsername(userName);
		loginAdmin.setPassword(password);
		 
		LoginQuery loginQuery = new LoginQuery();
		LoginAdminQuery loginAdminQ = new LoginAdminQuery();
		//creating object for LoginDao. This class contains main logic of the application.
		 
		String userValidate = loginQuery.LoginQuery(loginBean); 
		String adminValidate = loginAdminQ.LoginAdminQuery(loginAdmin);
		//Calling authenticateUser function
		
		//DisplayVehiclesQuery dvhq = new DisplayVehiclesQuery();
		
		
		DisplayVehiclesQuery dvhq = new DisplayVehiclesQuery();
		DisplayBookings db = new DisplayBookings();
		if(userValidate.equals("SUCCESS")) //If function returns success string then user will be rooted to Home page
		 {
			 
			try {
				HttpSession session = request.getSession();
		         String name = request.getParameter("username");
		         List<Vehicle> vehicles;
				 vehicles = dvhq.list();
				 request.setAttribute("vehicles", vehicles);
		         session.setAttribute( "user", name );
				 request.setAttribute("userName", userName); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
				 request.getRequestDispatcher("/CustomerHome.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
	         
			 
		 }else if(adminValidate.equals("SUCCESSAdmin")) {
			 try {
				 List<Booking> bookings = db.list();
		         request.setAttribute("bookings", bookings); // Will be available as ${products} in JSP
				 HttpSession session = request.getSession();
		         String name = request.getParameter("username");
		         session.setAttribute( "user", name );
				 request.setAttribute("userName", userName); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
				 request.getRequestDispatcher("/Dashboard.jsp").forward(request, response);//RequestDispatcher is used to send the control to the invoked page.
			 }catch(SQLException er){
				 er.printStackTrace();
			 }
			
			 
		 }else
		 {
			 request.setAttribute("errMessage", userValidate); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
			 request.getRequestDispatcher("/index.jsp").forward(request, response);//forwarding the request
		 }
	}

}
