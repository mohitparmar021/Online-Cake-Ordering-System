package cos.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cos.dbconnection.MyConnection;
import cos.pojoclass.AddCakeBean;


public class AddCakeDao {

	public String addNewCakeInsert(AddCakeBean addCakeBean ) throws SQLException
	{
	   String cakename=addCakeBean.getCakename();
	   	  
	   Connection con=null;	  
	   con=MyConnection.getMyConnection();
	   String query=" insert into add_new_cake(cake_name) values(?);";
	   PreparedStatement ps=con.prepareStatement(query);
	   ps.setString(1, cakename);
	     
	   int rs=ps.executeUpdate();
	   if(rs>0)
	   {
		   return "inserted";
	   }
	   else
	   {
		   return "not-inserted";
	   }
	   
	}   
}
