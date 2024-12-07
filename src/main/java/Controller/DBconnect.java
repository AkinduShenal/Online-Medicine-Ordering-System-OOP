package Controller;
import java.sql.*;

public class DBconnect {

	public static Connection getCon() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Online_Medicine_System?useSSL=false","root","");
			return con;
		}catch(Exception e) {
			System.out.println(e);
			return null;
		}
	}

	
}
