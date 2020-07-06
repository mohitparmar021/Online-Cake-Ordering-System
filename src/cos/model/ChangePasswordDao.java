package cos.model;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import cos.dbconnection.MyConnection;
import cos.pojoclass.ChangePassword;

public class ChangePasswordDao {

	public String  insertChangePassword(ChangePassword changePassword) throws SQLException
	{		
		  String username=changePassword.getUsername();
		  String newpassword=changePassword.getNewpassword();
		  String sessionuser=changePassword.getSessionuser();
		  
		  Connection con=MyConnection.getMyConnection();
		  Statement stmt=con.createStatement();
			 
		      if(username.equals(sessionuser))
		      {
		    	     String query ="update login set password='"+newpassword+"' where username='"+username+"'";
		    	     int p= stmt.executeUpdate(query);
		    	      if(p>0)
		    	      {
		    	    	  return "changed";	 
		    	      }
		    	      else
		    	      {
		    	    	  return "Not-changed";	
		    	      }
		    	    
		      }
		      else
		      {
		    	  return "Not-changed";	
		      }
			 
        	
	}
}
