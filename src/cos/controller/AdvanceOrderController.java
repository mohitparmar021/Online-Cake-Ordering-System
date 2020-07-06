package cos.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cos.model.AdvanceOrderDao;
import cos.model.OrderDao;
import cos.pojoclass.AdvanceOrderBean;

/**
 * Servlet implementation class AdvanceOrderController
 */
@WebServlet("/advanceorder")
public class AdvanceOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdvanceOrderController() {
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
		// TODO Auto-generated method stub
		
		int id=Integer.parseInt(request.getParameter("adorderid"));
		String customer=request.getParameter("c-name");
		Long mobile=Long.parseLong(request.getParameter("mobile"));
		String orderdate=request.getParameter("c-date");
		String deliverydate=request.getParameter("d-date");
		String item=request.getParameter("item");
		String category=request.getParameter("category");
		Float unitprice=Float.parseFloat(request.getParameter("unit-price"));
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		Float totalprice=Float.parseFloat(request.getParameter("totalprice"));
		Float dueprice=Float.parseFloat(request.getParameter("due-price"));
		Float advanceprice=Float.parseFloat(request.getParameter("advance-price"));
		String paymentmode=request.getParameter("paymentmode");
		String orderstatus=request.getParameter("order_status");
		
		AdvanceOrderBean advanceorder =new AdvanceOrderBean();
		advanceorder.setAdorderid(id);
		advanceorder.setCname(customer);
		advanceorder.setMobile(mobile);
		advanceorder.setItem(item);
		advanceorder.setCategory(category);
		advanceorder.setOdate(orderdate);
		advanceorder.setDdate(deliverydate);
		advanceorder.setUnitprice(unitprice);
		advanceorder.setQuantity(quantity);
		advanceorder.setTotalprice(totalprice);
		advanceorder.setAdprice(advanceprice);
		advanceorder.setDueprice(dueprice);
        advanceorder.setPaymentmode(paymentmode);
        advanceorder.setOrderstatus(orderstatus);
        
       
      String check=null;
        
      AdvanceOrderDao adorderdao=new AdvanceOrderDao();
       try 
       {
		 check= adorderdao.insetAdvanceOrder(advanceorder);
	   } catch (SQLException e) 
       {
		// TODO Auto-generated catch block
		e.printStackTrace();
	    }
        
         if(check.equals("inserted"))
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
