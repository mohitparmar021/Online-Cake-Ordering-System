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
 * Servlet implementation class AdSearchByName
 */
@WebServlet("/adsearchbyname")
public class AdSearchByName extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdSearchByName() {
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
		String name=request.getParameter("ad-c-name");
		  Connection con=MyConnection.getMyConnection();
		  try
		  { 
		 	 Statement stmt=con.createStatement();
		 	 String query="Select * from advance_order_info where c_name='"+name+"'";
		   	 ResultSet rs=stmt.executeQuery(query);
		 	 
		 	 RequestDispatcher rd= request.getRequestDispatcher("adsearchbyId.jsp");
		 	 request.setAttribute("data", rs);
		 	 rd.forward(request, response);
		  }
		  catch(Exception e)
		  {
		 	 response.getWriter().print(e);
		  }
	}

}
