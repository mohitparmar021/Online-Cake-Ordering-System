package cos.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import cos.dbconnection.MyConnection;
import cos.pojoclass.LoginBean;

public class LoginDao {
	
	public String checkValidate(LoginBean loginbean) throws SQLException
	{
		String username=loginbean.getUsername();
		String password=loginbean.getPassword();
		
		String dbusername="";
		String dbpassword="";
		
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
		
	   con=MyConnection.getMyConnection();
	   stmt=con.createStatement();
	   String query="select username,password from login where username='"+username+"'";
	   rs=stmt.executeQuery(query);
	   
	   while(rs.next())
	   {
		  dbusername=rs.getString("username");
		  dbpassword=rs.getString("password");
		  
		  
		  if(username.equals(dbusername) && password.equals(dbpassword))
          {
			  return "valid-user"; 
          }
		  
	   }
	    System.out.print(dbusername);
	    System.out.print(dbpassword);
	    System.out.print(username);
	    System.out.print(password);
		
		return "invalid-user";
	}
}
