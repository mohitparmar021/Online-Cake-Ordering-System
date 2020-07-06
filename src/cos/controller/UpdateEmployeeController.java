package cos.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cos.dbconnection.MyConnection;

/**
 * Servlet implementation class UpdateEmployeeController
 */
@WebServlet("/update_employee")
public class UpdateEmployeeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEmployeeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int empid=Integer.parseInt(request.getParameter("emp_id"));
		String empname=request.getParameter("emp_name");
		String empmobile=request.getParameter("emp_mobile");
		String empaddress=request.getParameter("emp_address");
		String empjoining=request.getParameter("emp_joining");
		String empstatus=request.getParameter("emp_status");
		String emppost=request.getParameter("emp_post");
		String empleaving=request.getParameter("emp_leaving");
		
		
		Connection con=MyConnection.getMyConnection();
		try
		{
			Statement stmt=con.createStatement();
			String query="update employee_info set emp_name='"+empname+"', emp_mobile='"+empmobile+"', emp_address='"+empaddress+"', emp_joining='"+empjoining+"',emp_status='"+empstatus+"',emp_post='"+emppost+"', emp_leaving='"+empleaving+"' where emp_id='"+empid+"';";
		    stmt.executeUpdate(query);
		  
		    RequestDispatcher rd=request.getRequestDispatcher("view-emp-detail.jsp");
		   
		    rd.forward(request, response);
		    con.close();
		}
		catch(Exception e)
		{
			response.getWriter().print(e);
		}
		
	}

}
