package cos.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cos.model.FeedbackDao;
import cos.pojoclass.FeedbackBean;

/**
 * Servlet implementation class FeedbackController
 */
@WebServlet("/feedback")
public class FeedbackController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedbackController() {
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
	     String name=request.getParameter("fname");
	     String mail=request.getParameter("mail");
	     String mssg=request.getParameter("mssg");
	     
	    FeedbackBean feedbackbean=new FeedbackBean();
	    feedbackbean.setName(name);
	    feedbackbean.setMail(mail);
	    feedbackbean.setMssg(mssg);
	     
	    String check=null;
	    
	    FeedbackDao feedbackdao=new FeedbackDao();
	    try {
		check=feedbackdao.feedbackInsert(feedbackbean);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	     if(check.equals("inserted"))
	     {
	    	 request.setAttribute("mssg", "You Message has been Delivered");
	    	 request.getRequestDispatcher("index.jsp").forward(request, response);
	     }
	     else
	     {
	    	 request.getRequestDispatcher("index.jsp").forward(request, response);
	     }
	    
	}

}
