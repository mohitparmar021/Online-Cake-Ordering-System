package cos.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cos.dbconnection.MyConnection;
import cos.model.ChangePasswordDao;
import cos.pojoclass.ChangePassword;

/**
 * Servlet implementation class ChangePasswordController
 */
@WebServlet("/changepassword")
public class ChangePasswordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePasswordController() {
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
		HttpSession session=request.getSession();
		
		 String username=request.getParameter("username");
		 String newpassword=request.getParameter("new-password");
		 
		 String sessionuser=(String)session.getAttribute("username");
		 
		 ChangePassword cpassword=new ChangePassword();
		 cpassword.setUsername(username);
		 cpassword.setNewpassword(newpassword);
		 cpassword.setSessionuser(sessionuser);
		 
		ChangePasswordDao apassworddao=new ChangePasswordDao();
		String check=null;
		
		try {
			check=apassworddao.insertChangePassword(cpassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 if(check.endsWith("changed"))
		 {
			 session.setAttribute("username", sessionuser);
			 request.getRequestDispatcher("admin-dashboard.jsp").forward(request, response);
		 }
		 else
		 {
			 request.getRequestDispatcher("admin-dashboard.jsp").forward(request, response);
		 }
	}

}
