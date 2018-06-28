package controllers;

//import java.io.File;
import java.io.IOException;
//import java.io.InputStream;
//import java.nio.file.Path;
//import java.nio.file.Paths;
//import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.Part;
//import javax.servlet.annotation.MultipartConfig;
//import javax.servlet.annotation.WebServlet;
//import org.apache.commons.fileupload.servlet.ServletFileUpload;
//
//import org.apache.commons.fileupload.disk.DiskFileItemFactory;
//import org.apache.commons.fileupload.FileItem;

import dbhelpers.AddVehicleQuery;
import models.Vehicle;

/**
 * Servlet implementation class AddVehicleController
 */
public class AddVehicleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private final String UPLOAD_DIRECTORY = "C:\\Users\\kasun\\eclipse-workspace\\VRS\\WebContent\\images\\uploads\\vehicles";

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddVehicleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
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
		String insurance_coverage = request.getParameter("insurance_coverage");
		String rate= request.getParameter("rate");
//		Part filePart = request.getPart("file");
		
//		String filePath = filePart.getSubmittedFileName();//Retrieves complete file name with path and directories 
//        Path p = Paths.get(filePath); //creates a Path object
//        String fileName = p.getFileName().toString();//Retrieves file name from Path object
//        InputStream fileContent = filePart.getInputStream();//converts Part data to input stream
        
		Vehicle vehicle = new Vehicle();
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
		AddVehicleQuery obj = new AddVehicleQuery();
		
		//Pass the Employee to EmpAddQuery to add to the database
		obj.addData(vehicle);
		
		//Pass execution control to the ReadServlet
		String url = "/Dashboard.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
	}

}
