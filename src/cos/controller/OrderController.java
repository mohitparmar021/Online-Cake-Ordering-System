package cos.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cos.model.OrderDao;
import cos.pojoclass.OrderBean;

/**
 * Servlet implementation class OrderController
 */
@WebServlet("/save_order")
public class OrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderController() {
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
		
		int id=Integer.parseInt(request.getParameter("orderid"));
		String customer=request.getParameter("cname");
		Long mobile=Long.parseLong(request.getParameter("mobile"));
		String date=request.getParameter("odate");
		String item=request.getParameter("item");
		Float unitprice=Float.parseFloat(request.getParameter("unitprice"));
		int quantity=Integer.parseInt(request.getParameter("quantity"));
		Float totalprice=Float.parseFloat(request.getParameter("totalprice"));
		String payment_mode=request.getParameter("paymentmode");
		
		
		System.out.print(quantity);
		
		OrderBean orderbean=new OrderBean();
		orderbean.setOrderid(id);
		orderbean.setCname(customer);
		orderbean.setMobile(mobile);
		orderbean.setItem(item);
		orderbean.setOdate(date);
		orderbean.setQuantity(quantity);
		orderbean.setUnitprice(unitprice);
        orderbean.setTotalprice(totalprice);
        orderbean.setPaymentmode(payment_mode);
        
        String check=null;
        
        OrderDao orderdao=new OrderDao();
       try 
       {
		 check= orderdao.orderInsert(orderbean);
	   } catch (SQLException e) 
       {
		// TODO Auto-generated catch block
		e.printStackTrace();
	    }
        
         if(check.equals("inserted"))
         {
            request.setAttribute("orderid", id);
        	request.getRequestDispatcher("print-order.jsp").forward(request, response);
         }
         else
         {
        	 request.getRequestDispatcher("admin-dashboard.jsp").forward(request, response);
         }
       
       
	}

}
