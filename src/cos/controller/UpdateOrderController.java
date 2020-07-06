package cos.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cos.model.AdvanceOrderDao;
import cos.model.UpdateOrderDao;
import cos.pojoclass.UpdateOrderBean;

/**
 * Servlet implementation class UpdateOrderController
 */
@WebServlet("/updateorder")
public class UpdateOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateOrderController() {
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
		int id=Integer.parseInt(request.getParameter("adorderid"));
		Float dueprice=Float.parseFloat(request.getParameter("due-price"));
		String paymentmode=request.getParameter("paymentmode");
		String orderstatus=request.getParameter("order_status");
		
		UpdateOrderBean updateorder=new UpdateOrderBean();
		updateorder.setAdorderid(id);
		updateorder.setDueprice(dueprice);
		updateorder.setOrderstatus(orderstatus);
		updateorder.setPaymentmode(paymentmode);
		
		String check=null;
        
	      UpdateOrderDao updateorderdao=new UpdateOrderDao();
	       try 
	       {
			 check= updateorderdao.insertUpdateOrder(updateorder);
		   } catch (SQLException e) 
	       {
			// TODO Auto-generated catch block
			e.printStackTrace();
		    }
	        
	         if(check.equals("updated"))
	         {
	            request.setAttribute("adorderid", id);
	        	request.getRequestDispatcher("advance-print-order.jsp").forward(request, response);
	         }
	         else
	         {
	        	 request.getRequestDispatcher("admin-dashboard.jsp").forward(request, response);
	         }
		
		
		
	}

}
