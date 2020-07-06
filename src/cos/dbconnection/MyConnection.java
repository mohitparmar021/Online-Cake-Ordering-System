package cos.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection {
    
	public static Connection getMyConnection()
	{
		Connection con=null;
		 String url="jdbc:mysql://localhost:3306/cake_ordering_system";
		 String username="root";
		 String password="mohit";
		
		try
		{
              Class.forName("com.mysql.jdbc.Driver");
              con=DriverManager.getConnection(url,username,password);
 		}
		catch(Exception e)
 		{
 			System.out.print(e);
		}
		   
		
		return con;
		
	}
}
