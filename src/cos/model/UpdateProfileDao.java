package cos.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import cos.dbconnection.MyConnection;
import cos.pojoclass.UpdateProfileBean;


public class UpdateProfileDao {
	public String insertUpdateProfile(UpdateProfileBean updateprofile ) throws SQLException
	{
	     
		  int id=updateprofile.getId();
		  String username=updateprofile.getUsername();
		  String name=updateprofile.getName();
		  String add=updateprofile.getAddress();
		  String mobile=updateprofile.getMobile();
		  String email=updateprofile.getEmailid();
		  
		  
		   Connection con=null;	
		   PreparedStatement ps=null; 
		   con=MyConnection.getMyConnection();
		   Statement stmt=con.createStatement();
		   String query="update login set username='"+username+"',name ='"+name+"', address='"+add+"', mobile='"+mobile+"', email='"+email+"' where id='"+id+"'; ";
		    
		   int rs=stmt.executeUpdate(query);
		   
		  /* String query="update login set username=? ,name=?,mobile=?,address=?,email=? where id=?;";		   
		   ps=con.prepareStatement(query);
		    ps.setInt(1, id);
		    ps.setString(2, username);
		    ps.setString(4, name);
		    ps.setString(5, mobile);
		    ps.setString(6, add);
		    ps.setString(7, email);
		    
		   int p=ps.executeUpdate();*/	
		 
		   if(rs>0)
		   {
			   return "updated";
		   }
		   else
		   {
			   return "not-updated";
		   }
	}	   
}
