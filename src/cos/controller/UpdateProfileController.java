package cos.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cos.model.UpdateProfileDao;
import cos.pojoclass.UpdateOrderBean;
import cos.pojoclass.UpdateProfileBean;

/**
 * Servlet implementation class UpdateProfileController
 */
@WebServlet("/updateprofile")
public class UpdateProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProfileController() {
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
	   int id=Integer.parseInt(request.getParameter("id"));
	   String username=request.getParameter("username");
	   String name=request.getParameter("name");
	   String mobile=request.getParameter("mobile");
	   String emailid=request.getParameter("emailid");
	   String address=request.getParameter("add");
	   
	   
	   UpdateProfileBean updateprofile=new UpdateProfileBean();
	   updateprofile.setId(id);
	   updateprofile.setUsername(username);
	   updateprofile.setName(name);
	   updateprofile.setMobile(mobile);
	   updateprofile.setEmailid(emailid);
	   updateprofile.setAddress(address);
	   
	   UpdateProfileDao updateprofiledao=new UpdateProfileDao();
	   String check=null;
	   
	   try 
	   {
		check=updateprofiledao.insertUpdateProfile(updateprofile);
		
	    } catch (SQLException e) 
	   {
		// TODO Auto-generated catch block
	    	 System.out.print(e);
	    }
	   
	   System.out.print(check);
	   
	   if(check.equals("updated"))
       {  
      	request.getRequestDispatcher("profile.jsp").forward(request, response);
       }
       else
       {
      	 request.getRequestDispatcher("profile.jsp").forward(request, response);
       }
     
	   
	}

}
