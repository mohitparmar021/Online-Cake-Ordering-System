package cos.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cos.dbconnection.MyConnection;
import cos.pojoclass.FeedbackBean;

public class FeedbackDao {
  public String feedbackInsert(FeedbackBean feedbackbean) throws SQLException
  {
	  String name= feedbackbean.getName();
	  String mail=feedbackbean.getMail();
	  String mssg=feedbackbean.getMssg();
	  
	  Connection con=null;
	  PreparedStatement ps=null;
	  
	  con =MyConnection.getMyConnection();
	  String query="insert into feedback values(?,?,?);";
	  ps=con.prepareStatement(query);
	  ps.setString(1, name);
	  ps.setString(2, mail);
	  ps.setString(3, mssg);
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
