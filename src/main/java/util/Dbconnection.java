package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbconnection {

	public static Connection getConnection(){
		try {
			String dbURL ="jdbc:mysql://umj7-016.cafe24.com/parkyj3089";
			String dbID = "parkyj3089";
			String dbPassword ="fuckyj33";
			Class.forName("com.mysql.jdbc.Driver");
			
			return DriverManager.getConnection(dbURL,dbID,dbPassword);
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}
}
