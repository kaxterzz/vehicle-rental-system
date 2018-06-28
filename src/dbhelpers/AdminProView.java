package dbhelpers;

import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import models.Administrator;

public class AdminProView {
	DBConnection databaseCon = new DBConnection();
	
	public Administrator getAdmin(String name) throws SQLException {

		   Administrator admin = new Administrator();

		    try(Connection con = DBConnection.dbconnect()) {

		        PreparedStatement pst = con.prepareStatement("SELECT * FROM administrators WHERE username=?;");
		        pst.setString(1, name); //set name like this (The '1' means first occurance of a question mark '?')
		        ResultSet resultSet = pst.executeQuery();

		        while (resultSet.next()) {

		        	admin.setId(resultSet.getInt("id"));
		        	admin.setName(resultSet.getString("name"));
		        	admin.setEmail(resultSet.getString("email"));
		        	admin.setUsername(resultSet.getString("username"));
		        	admin.setPassword(resultSet.getString("password"));

		        }
		    }catch(SQLException e) {
		        e.printStackTrace();
		    }

		    return admin;
		    
		   }
}
