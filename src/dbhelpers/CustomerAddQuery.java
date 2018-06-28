package dbhelpers;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import models.Customer;

public class CustomerAddQuery {
	DBConnection databaseCon = new DBConnection();
    
    public void addData(Customer customer)
    {
//    	String name = customer.getName();
//    	String email = customer.getEmail();
//    	String address = customer.getAddress();
//    	String sex = customer.getSex();
//    	String bday = customer.getBday();
//    	String telephone = customer.getTelephone();
//    	String password = customer.getPassword();
    	
    	String query = "insert into customers (`name`, `email`, `address`, `sex`, `bday`, `telephone` , `username` ,`password`) values (?,?,?,?,?,?,?,?)" ;
    	try {
    		Connection con = databaseCon.dbconnect();
    		PreparedStatement pst = con.prepareStatement(query); 
    		pst.setString(1, customer.getName());
    		pst.setString(2, customer.getEmail());
    		pst.setString(3, customer.getAddress());
    		pst.setString(4, customer.getSex());
    		pst.setString(5, customer.getBday());
    		pst.setString(6, customer.getTelephone());
    		pst.setString(7, customer.getUsername());
    		pst.setString(8, customer.getPassword());
    		pst.execute();
    		
    		
    	} catch (SQLException e) {
    		// TODO Auto-generated catch block
    		e.printStackTrace();
    	}
    }
	
}
