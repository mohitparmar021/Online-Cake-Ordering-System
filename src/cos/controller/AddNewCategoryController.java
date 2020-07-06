package cos.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cos.model.AddCategoryDao;
import cos.pojoclass.AddCategory;

/**
 * Servlet implementation class AddNewCategoryController
 */
@WebServlet("/addnewcategory")
public class AddNewCategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewCategoryController() {
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
		 String category=request.getParameter("cake-category");
		  
		 AddCategory addcategory=new AddCategory();
		  addcategory.setCategory(category);
		  
		  String check=null;
	        
	    AddCategoryDao addcategorydao=new AddCategoryDao();
	       try 
	       {
			 check= addcategorydao.addCategoryInsert(addcategory);
		   } catch (SQLException e) 
	       {
			// TODO Auto-generated catch block
			e.printStackTrace();
		    }
	       System.out.print(check);
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
