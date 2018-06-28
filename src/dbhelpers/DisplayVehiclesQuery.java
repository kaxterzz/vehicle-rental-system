package dbhelpers;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import models.Vehicle;

public class DisplayVehiclesQuery {
	DBConnection databaseCon = new DBConnection();
	public List<Vehicle> list() throws SQLException {
        List<Vehicle> vehicles = new ArrayList<Vehicle>();

        try (
    		Connection con = databaseCon.dbconnect();
    		PreparedStatement pst = con.prepareStatement("SELECT * FROM vehicles");
            ResultSet resultSet = pst.executeQuery();
        ) {
            while (resultSet.next()) {
                Vehicle vehicle = new Vehicle();
                vehicle.setId(resultSet.getInt("id"));
                vehicle.setType(resultSet.getString("type"));
        		vehicle.setBrand(resultSet.getString("brand"));
        		vehicle.setModel(resultSet.getString("model"));
        		vehicle.setYear(resultSet.getString("year"));
        		vehicle.setReg_no(resultSet.getString("reg_no"));
        		vehicle.setColor(resultSet.getString("color"));
        		vehicle.setNo_of_seats(resultSet.getString("no_of_seats"));
        		vehicle.setChassis_no(resultSet.getString("chassis_no"));
        		vehicle.setEngine_no(resultSet.getString("engine_no"));
        		vehicle.setMileage(resultSet.getString("mileage"));
        		vehicle.setInsuarance_coverage(resultSet.getString("insuarance_coverage"));
        		vehicle.setRate(resultSet.getString("rate"));
                vehicles.add(vehicle);
            }
        }

        return vehicles;
    }
	
}
