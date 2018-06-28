package dbhelpers;

import models.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UpdateProfile {
	DBConnection databaseCon = new DBConnection();
	
	public void updateData(Customer customer)
	{
		 try(Connection con = DBConnection.dbconnect()) {

		        PreparedStatement pst = con.prepareStatement("UPDATE customers SET name=?, email=?, address=?, sex=?, bday=?, telephone=? , username=? ,password=? WHERE id=?");
		        pst.setString(1, customer.getName());
	    		pst.setString(2, customer.getEmail());
	    		pst.setString(3, customer.getAddress());
	    		pst.setString(4, customer.getSex());
	    		pst.setString(5, customer.getBday());
	    		pst.setString(6, customer.getTelephone());
	    		pst.setString(7, customer.getUsername());
	    		pst.setString(8, customer.getPassword());
	    		pst.setInt(9, customer.getId());
	    		pst.executeUpdate();

		    }catch(SQLException e) {
		        e.printStackTrace();
		    }
	}
}
