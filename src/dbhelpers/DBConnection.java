package dbhelpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection dbconnect(){
        Connection con = null;
        try {
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/vehicle_rental_system", "root", "Kasuna#96");
       
        
    }
    catch (ClassNotFoundException | SQLException e){
        System.out.println(e);
    }
       return con; 
    }
}
