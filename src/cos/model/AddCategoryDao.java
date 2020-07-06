package cos.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cos.dbconnection.MyConnection;
import cos.pojoclass.AddCakeBean;
import cos.pojoclass.AddCategory;

public class AddCategoryDao {

	public String addCategoryInsert(AddCategory addCategory ) throws SQLException
	{
	   String category=addCategory.getCategory();
	   	  
	   Connection con=null;	  
	   con=MyConnection.getMyConnection();
	   String query=" insert into add_new_category(category) values(?);";
	   PreparedStatement ps=con.prepareStatement(query);
	   ps.setString(1, category);
	     
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
