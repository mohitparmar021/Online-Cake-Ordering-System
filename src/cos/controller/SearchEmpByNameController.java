package cos.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cos.dbconnection.MyConnection;

/**
 * Servlet implementation class SearchEmpByNameController
 */
@WebServlet("/searchemployee")
public class SearchEmpByNameController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchEmpByNameController() {
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
	
	   String name=request.getParameter("emp-name");
	   Connection con=MyConnection.getMyConnection();
		try
		{
			Statement stmt=con.createStatement();
			String query="select * from employee_info where emp_name='"+name+"';";
			ResultSet rs=stmt.executeQuery(query);
			
			if(rs!=null)
			{
				request.setAttribute("searchdata", rs);
				RequestDispatcher rd=request.getRequestDispatcher("view-emp-detail2.jsp");
				rd.forward(request, response);
				con.close();
			}
				   
		}
		catch(Exception e)
		{
			response.getWriter().print(e);
		
		}
	}

}
