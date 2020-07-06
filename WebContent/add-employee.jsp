<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="cos.dbconnection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add New Staff</title>
<link rel="stylesheet" type="text/css" href="assets/libraryfile/bootstrap.min.css">
<script src="assets/libraryfile/jquery-3.4.1.min.js"></script> 
<style type="text/css">
	 	
	 	body
	 	{
	 	
	 		background-color: #e4b118;
        
	 	}
	 	.main-card
	 	{
            margin-top: 30px;
            background-color: #e9ecef;
            padding-bottom: 13px;
            height:625px;

           

	 	}
    .main-card-content
    {
    padding-bottom: 54px;
    }

	     .dropbtn ,.dropbtn1,.dropbtn2
         {
         cursor: pointer;
         font-size: 16px;  
         border: none;
         outline: none;
         color: white;
         padding: 8px 12px;
         background-color: inherit;
         font-family: inherit;
         margin: 0;

        }	
   
     
        .btn-save
        {
          margin-top: 20px;
          border-radius: 0px;
          
        }
     
	 </style>
</head>
<body>

<div class="container">	
	 <div class="main-card ">
           <%@ include file="views/admin-navbar.jsp" %>	
	   	      <div class=" main-card-content">	   	       	 
                    <div class="container">
                     <form action="save_employee" method="post">
                         <h3 class="mt-3">Add New Staff</h3>
                             <div class="row mt-5">
                             
                                               <div class="col-sm-2">
                                                     <label class="mt-2">Employee Id</label>
                                               </div>
                                              
                         <%
                             
                                 try
                              {
                                	 Connection con=null;
                                     con=MyConnection.getMyConnection();
                                     Statement stmt=con.createStatement();
                                     String query="select count(emp_id) as count_row from employee_info;";
                                     ResultSet rs=stmt.executeQuery(query);
                                      
                                     while(rs.next())
                                     {
                                    	 int id=Integer.parseInt(rs.getString("count_row"));
                                    	 %>
                                    	  <div class="col-sm-4">
                                                      <div class="form-group">
                                                       <input type="number" value="<%=id+1 %>" readonly  name="emp_id" id="emp_id" class="bg-white form-control"> 
                                                      </div>
                                           </div> 
                                    	 <%
                                     }
                              }
                              catch(Exception e)
                              {
                            	  System.out.print(e);
                              }
                           
                            
                              %>
                                                          
                                              
                                                
                                 </div>
                            <div class="row mt-3">
                                               <div class="col-sm-2">
                                                     <label class="c-name mt-2">Employee Name</label>
                                               </div>
                                               <div class="col-sm-4">
                                                      <div class="form-group">
                                                          <input type="text" required name="emp_name" id="emp_name" class="form-control"> 
                                                      </div>  
                                               </div>
                                                <div class="col-sm-2">
                                                     <label class="mt-2 emp-mobile">Mobile Number</label>
                                               </div>
                                               <div class="col-sm-4"> 
                                                       <div class="form-group">
                                                           <input type="text" required name="emp_mobile" id="emp-mobile" class="form-control"> 
                                                        </div>
                                               </div>
                                 </div>
                                        <div class="row mt-3">
                                               <div class="col-sm-2">
                                                     <label class="add mt-2">Address</label>
                                               </div>
                                               <div class="col-sm-4">
                                                      <div class="form-group">
                                                         <input type="text" required name="emp_address" id="emp-address" class="form-control">
                                                      </div>  
                                               </div>
                                               <div class="col-sm-2">
                                                     <label class="mt-2 ">Post </label>
                                               </div>
                                               <div class="col-sm-4"> 
                                                       <div class="form-group">
                                                           <input type="text" required name="emp_post" id="emp_post" class="form-control"> 
                                                        </div>
                                               </div>
                                       </div>
                                        <div class="row mt-3">
                                               <div class="col-sm-2">
                                                    <label class="">Joining Date</label>
                                               </div>
                                               <div class="col-sm-4">
                                                      <div class="form-group">
                                                        <input type="date" required name="emp_joining" id="emp_joining" class="form-control"> 
                                                      </div>  
                                               </div>
                                                <div class="col-sm-2">
                                                     <label for="emp_status" class="">Status</label>
                                               </div>
                                               <div class="col-sm-4"> 
                                                       <div class="form-group">
                                                         <select class="form-control" required name="emp_status" id="emp_status">
                                                                     <option value="">-Please-Select-</option>
                                                                   <option value="active">Active</option>
                                                                   <option value="unactive">Unactive</option>
                                                                  
                                                           </select>
                                                        </div>
                                               </div>
                                 </div>                                                                                                              
                                     <input type="submit" class="btn btn-info btn-save  mt-4" value="Add Employee">
                                     <input type="reset" class="btn btn-info btn-save mt-4" value="Reset Order">     
                    </form>

                  
              
               </div>
	   	       	  

	   	       </div>

	
	 	
	 </div>

</div>    
 


</body>
</html>