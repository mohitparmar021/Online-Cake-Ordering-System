package cos.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cos.dbconnection.MyConnection;
import cos.pojoclass.AdvanceOrderBean;

public class AdvanceOrderDao {

	
	public String insetAdvanceOrder(AdvanceOrderBean advanceorder) throws SQLException
	{
		  int id= advanceorder.getAdorderid();
		  String name=advanceorder.getCname();
		  Long mobile=advanceorder.getMobile();
		  String item=advanceorder.getItem();
		  String category=advanceorder.getCategory();
		  String odate=advanceorder.getOdate();
		  String ddate=advanceorder.getDdate();
		  int quantity=advanceorder.getQuantity();
		  Float unitp=advanceorder.getUnitprice();
		  Float totalp=advanceorder.getTotalprice();
		  Float adprice=advanceorder.getAdprice();
		  Float dueprice=advanceorder.getDueprice();
		  String paymentmode=advanceorder.getPaymentmode();
		  String orderstatus=advanceorder.getOrderstatus();
		  
		  
		   Connection con=null;	  
		   con=MyConnection.getMyConnection();
		   String query=" insert into advance_order_info values(?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
		   PreparedStatement ps=con.prepareStatement(query);
		   ps.setInt(1, id);
		   ps.setString(2, name);
		   ps.setLong(3, mobile);
		   ps.setString(4, item);
		   ps.setString(5, category);
		   ps.setString(6, odate);
		   ps.setString(7, ddate);
		   ps.setFloat(8, unitp);
		   ps.setFloat(9, quantity);
		   ps.setFloat(10, totalp);
		   ps.setFloat(11, adprice);
		   ps.setFloat(12, dueprice);
		   ps.setString(13, orderstatus);
		   ps.setString(14, paymentmode);
		  
		    
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
