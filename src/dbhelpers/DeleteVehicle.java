package dbhelpers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import models.Vehicle;

public class DeleteVehicle {
DBConnection databaseCon = new DBConnection();
	
	public void deleteData(Vehicle vehicle)
	{
		 try(Connection con = DBConnection.dbconnect()) {

		        PreparedStatement pst = con.prepareStatement("DELETE FROM vehicles WHERE id=?");
	    		pst.setInt(1, vehicle.getId());
	    		pst.executeUpdate();

		    }catch(SQLException e) {
		        e.printStackTrace();
		    }
	}
}
