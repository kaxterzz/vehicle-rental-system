package dbhelpers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import models.Booking;
import models.Vehicle;

public class AddBook {
	DBConnection databaseCon = new DBConnection();
	
	 public void addData(Booking booking)
	    {

	    	
	    	String query = "insert into bookings (`from_date`, `to_date`, `name`, `contact_number`, `type`, `brand` , `model` ,`color`, `no_of_seats`, `insurance_coverage`, `rate`, `booked_date`) values (?,?,?,?,?,?,?,?,?,?,?,?)" ;
	    	try {
	    		Connection con = databaseCon.dbconnect();
	    		PreparedStatement pst = con.prepareStatement(query); 
	    		pst.setString(1, booking.getFrom_date());
	    		pst.setString(2, booking.getTo_date());
	    		pst.setString(3, booking.getName());
	    		pst.setString(4, booking.getContact_number());
	    		pst.setString(5, booking.getType());
	    		pst.setString(6, booking.getBrand());
	    		pst.setString(7, booking.getModel());
	    		pst.setString(8, booking.getColor());
	    		pst.setString(9, booking.getNo_of_seats());
	    		pst.setString(10, booking.getInsurance_coverage());
	    		pst.setString(11, booking.getRate());
	    		pst.setString(12, booking.getBooked_date());
	    		pst.execute();
	    		
	    		
	    	} catch (SQLException e) {
	    		// TODO Auto-generated catch block
	    		e.printStackTrace();
	    	}
	    }
}
