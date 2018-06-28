package dbhelpers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import models.Vehicle;

public class AddVehicleQuery {
DBConnection databaseCon = new DBConnection();
    
    public void addData(Vehicle vehicle)
    {
//    	String name = customer.getName();
//    	String email = customer.getEmail();
//    	String address = customer.getAddress();
//    	String sex = customer.getSex();
//    	String bday = customer.getBday();
//    	String telephone = customer.getTelephone();
//    	String password = customer.getPassword();
    	
    	String query = "insert into vehicles (`type`, `brand`, `model`, `year`, `reg_no`, `color` , `no_of_seats` ,`chassis_no`, `engine_no`, `mileage`, `insuarance_coverage`, `rate`) values (?,?,?,?,?,?,?,?,?,?,?,?)" ;
    	try {
    		Connection con = databaseCon.dbconnect();
    		PreparedStatement pst = con.prepareStatement(query); 
    		pst.setString(1, vehicle.getType());
    		pst.setString(2, vehicle.getBrand());
    		pst.setString(3, vehicle.getModel());
    		pst.setString(4, vehicle.getYear());
    		pst.setString(5, vehicle.getReg_no());
    		pst.setString(6, vehicle.getColor());
    		pst.setString(7, vehicle.getNo_of_seats());
    		pst.setString(8, vehicle.getChassis_no());
    		pst.setString(9, vehicle.getEngine_no());
    		pst.setString(10, vehicle.getMileage());
    		pst.setString(11, vehicle.getInsuarance_coverage());
    		pst.setString(12, vehicle.getRate());
    		pst.execute();
    		
    		
    	} catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	}
    }
}
