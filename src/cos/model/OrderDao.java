package cos.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cos.dbconnection.MyConnection;
import cos.pojoclass.OrderBean;

public class OrderDao {
	
	public String orderInsert(OrderBean orderbean) throws SQLException
	{
	  int id= orderbean.getOrderid();
	  String name=orderbean.getCname();
	  Long mobile=orderbean.getMobile();
	  String item=orderbean.getItem();
	  String date=orderbean.getOdate();
	  int quantity=orderbean.getQuantity();
	  Float unitp=orderbean.getUnitprice();
	  Float totalp=orderbean.getTotalprice();
	  String paymentmode=orderbean.getPaymentmode();
	  
	  
	   Connection con=null;	  
	   con=MyConnection.getMyConnection();
	   String query=" insert into order_info values(?,?,?,?,?,?,?,?,?);";
	   PreparedStatement ps=con.prepareStatement(query);
	   ps.setInt(1, id);
	   ps.setString(2, name);
	   ps.setLong(3, mobile);
	   ps.setString(4, item);
	   ps.setFloat(5, unitp);
	   ps.setFloat(6, quantity);
	   ps.setFloat(7, totalp);
	   ps.setString(8, paymentmode);
	   ps.setString(9, date);
	    
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
