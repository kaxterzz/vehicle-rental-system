package dbhelpers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import models.Administrator;

public class UpdateAdminPro {
	DBConnection databaseCon = new DBConnection();
	
	public void updateData(Administrator admin)
	{
		 try(Connection con = DBConnection.dbconnect()) {

		        PreparedStatement pst = con.prepareStatement("UPDATE administrators SET name=?, username=?, email=?, password=? WHERE id=?");
		        pst.setString(1, admin.getName());
	    		pst.setString(2, admin.getUsername());
	    		pst.setString(3, admin.getEmail());
	    		pst.setString(4, admin.getPassword());
	    		pst.setInt(5, admin.getId());
	    		pst.executeUpdate();

		    }catch(SQLException e) {
		        e.printStackTrace();
		    }
	}
}
