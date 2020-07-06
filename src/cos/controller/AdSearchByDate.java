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
 * Servlet implementation class AdSearchByDate
 */
@WebServlet("/adsearchbydate")
public class AdSearchByDate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdSearchByDate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String first=request.getParameter("search-date-from");
		   String second=request.getParameter("search-date-to");
		   Connection con=MyConnection.getMyConnection();
			  try
			  { 
			 	 Statement stmt=con.createStatement();
			 	 String query="select * from advance_order_info where order_date between '"+first+"' And '"+second+"' ; ";
			   	 ResultSet rs=stmt.executeQuery(query);
			 	 
			 	 RequestDispatcher rd= request.getRequestDispatcher("adsearchDetatilbydate.jsp");
			 	 request.setAttribute("data", rs);
			 	 rd.forward(request, response);
			  }
			  catch(Exception e)
			  {
			 	 response.getWriter().print(e);
			  }
	}

}
