package dbInfo;

import java.sql.Connection;
import java.sql.DriverManager;
public class DBConnection {
	private static Connection con = null;

	private DBConnection() {}
	
	static {
		try {
			Class.forName(InfoDb .driver);
			con = DriverManager.getConnection(InfoDb .dbURL,InfoDb .dbName,InfoDb .dbPassword);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public static Connection getConnection() {

		return con;
	}
	
	

}

