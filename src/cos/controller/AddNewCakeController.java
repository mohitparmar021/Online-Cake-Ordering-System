package cos.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cos.model.AddCakeDao;
import cos.model.OrderDao;
import cos.pojoclass.AddCakeBean;

/**
 * Servlet implementation class AddNewCakeController
 */
@WebServlet("/addnewcake")
public class AddNewCakeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewCakeController() {
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
	   
		  String cakename=request.getParameter("name-cake");
		  
		  AddCakeBean addcakebean=new AddCakeBean();
		  addcakebean.setCakename(cakename);
		  
		  String check=null;
	        
	        AddCakeDao addcakedao=new AddCakeDao();
	       try 
	       {
			 check= addcakedao.addNewCakeInsert(addcakebean);
		   } catch (SQLException e) 
	       {
			// TODO Auto-generated catch block
			e.printStackTrace();
		    }
	         if(check.equals("inserted"))
	         {  
	        	request.getRequestDispatcher("admin-dashboard.jsp").forward(request, response);
	         }
	         else
	         {
	        	 request.getRequestDispatcher("admin-dashboard.jsp").forward(request, response);
	         }
	       
		  
		  
	}

}
