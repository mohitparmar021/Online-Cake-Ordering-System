package cos.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import cos.dbconnection.MyConnection;
import cos.pojoclass.EmployeeBean;
import cos.pojoclass.OrderBean;

public class EmployeeDao {
	public String employeeInsert(EmployeeBean employeeBean) throws SQLException
	{
	    int empid=employeeBean.getEmpid();
	    String empname=employeeBean.getEmpname();
	    String empmobile=employeeBean.getEmpmobile();
	    String empaddress=employeeBean.getEmpaddress();
	    String empjoining=employeeBean.getEmpjoining();
	    String emppost=employeeBean.getEmppost();
	    String empstatus=employeeBean.getEmpstatus();
	    
	  
	  
	   Connection con=null;	  
	   con=MyConnection.getMyConnection();
	   String query=" insert into employee_info(emp_id,emp_name,emp_mobile,emp_address,emp_post,emp_status,emp_joining) values(?,?,?,?,?,?,?);";
	   PreparedStatement ps=con.prepareStatement(query);
	   ps.setInt(1, empid);
	   ps.setString(2, empname);
	   ps.setString(3, empmobile);
	   ps.setString(4, empaddress);
	   ps.setString(7, empjoining);
	   ps.setString(5, emppost);
	   ps.setString(6, empstatus);
	   
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
