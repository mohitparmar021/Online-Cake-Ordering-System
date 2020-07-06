package cos.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import cos.dbconnection.MyConnection;
import cos.pojoclass.AdvanceOrderBean;
import cos.pojoclass.UpdateOrderBean;

public class UpdateOrderDao {
	public String insertUpdateOrder(UpdateOrderBean updateorder) throws SQLException
	{
	      int id=updateorder.getAdorderid();
		  Float dueprice=updateorder.getDueprice();
		  String paymentmode=updateorder.getPaymentmode();
		  String orderstatus=updateorder.getOrderstatus();
		  
		  
		   Connection con=null;	  
		   con=MyConnection.getMyConnection();
		   Statement stmt=con.createStatement();
		   String query="update advance_order_info set due_price='"+dueprice+"',payment_mode ='"+paymentmode+"',order_status='"+orderstatus+"' where ad_id='"+id+"'; ";
		    
		   int rs=stmt.executeUpdate(query);
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
