package dbhelpers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.Booking;

public class DisplayBookings {
	DBConnection databaseCon = new DBConnection();
	public List<Booking> list() throws SQLException {
        List<Booking> bookings = new ArrayList<Booking>();

        try (
    		Connection con = databaseCon.dbconnect();
    		PreparedStatement pst = con.prepareStatement("SELECT * FROM bookings");
            ResultSet resultSet = pst.executeQuery();
        ) {
            while (resultSet.next()) {
            	Booking booking = new Booking();
            	booking.setFrom_date(resultSet.getString("from_date"));
            	booking.setTo_date(resultSet.getString("to_date"));
            	booking.setName(resultSet.getString("name"));
            	booking.setContact_number(resultSet.getString("contact_number"));
            	booking.setType(resultSet.getString("type"));
            	booking.setBrand(resultSet.getString("brand"));
            	booking.setModel(resultSet.getString("model"));
            	booking.setColor(resultSet.getString("color"));
            	booking.setNo_of_seats(resultSet.getString("no_of_seats"));
            	booking.setInsurance_coverage(resultSet.getString("insurance_coverage"));
            	booking.setRate(resultSet.getString("rate"));
            	booking.setBooked_date(resultSet.getString("booked_date"));
            	bookings.add(booking);
            }
        }

        return bookings;
    }
}
