package cos.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cos.model.EmployeeDao;
import cos.pojoclass.EmployeeBean;

/**
 * Servlet implementation class AddNewEmpController
 */
@WebServlet("/save_employee")
public class AddNewEmpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddNewEmpController() {
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
		
		int empid=Integer.parseInt(request.getParameter("emp_id"));
		String empname=request.getParameter("emp_name");
		String empmobile=request.getParameter("emp_mobile");
		String empaddress=request.getParameter("emp_address");
		String empjoining=request.getParameter("emp_joining");
		String empstatus=request.getParameter("emp_status");
		String emppost=request.getParameter("emp_post");
		
		EmployeeBean empbean=new EmployeeBean();
		empbean.setEmpid(empid);
		empbean.setEmpname(empname);
		empbean.setEmpmobile(empmobile);
		empbean.setEmpaddress(empaddress);
		empbean.setEmpjoining(empjoining);
        empbean.setEmppost(emppost);
        empbean.setEmpstatus(empstatus);
        
        EmployeeDao empdao=new EmployeeDao();
        String check=null;
        
        try {
			check=empdao.employeeInsert(empbean);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        if(check.equals("inserted"))
        {  
       	request.getRequestDispatcher("add-employee.jsp").forward(request, response);
        }
        else
        {
       	 request.getRequestDispatcher("add-employee.jsp").forward(request, response);
        }
      
		
		
	
	}

}
