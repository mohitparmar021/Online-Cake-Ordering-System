package cos.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cos.model.LoginDao;
import cos.pojoclass.LoginBean;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/adminlogin")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
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
		  
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		LoginBean login=new LoginBean();
		login.setUsername(username);
		login.setPassword(password);
		
		LoginDao logindao=new LoginDao();
		
		String check="";
		
		try 
		{
			 check=logindao.checkValidate(login);
		} catch (SQLException e)
		{
			e.printStackTrace();
		}
		
		if(check.equals("valid-user"))
		{
			 HttpSession session=request.getSession();
			 session.setAttribute("username", username);
			request.getRequestDispatcher("admin-dashboard.jsp").forward(request, response);  
		}
		else
		{
			/*request.getRequestDispatcher("login.jsp").forward(request, response);  */
			response.getWriter().print(check + "invalid password");
		}
		
		
	}

}
