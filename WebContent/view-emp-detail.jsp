<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="cos.dbconnection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback</title>
<link rel="stylesheet" type="text/css" href="assets/libraryfile/bootstrap.min.css">
<script src="assets/libraryfile/jquery-3.4.1.min.js"></script> 
<style type="text/css">
	 	
	 	body
	 	{
	 		background-color: #e4b118;
        
	 	}
	 	
	   .dropbtn,.dropbtn1,.dropbtn2   
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
	 		.main-card
	 	{
            margin-top: 30px;
             background-color: #e9ecef;
             
             padding-bottom: 61px;
	 	}
	 	.btn-add
	 	{
	 	   border-radius:0;
	 	}
	 	.search-form
	 	{
	 	   width:100%;
	 	   height:80px;
	 	   
	 	}
	 </style>
</head>
<body>

<div class="container">
	 <div class=" main-card ">
   <%@ include file="views/admin-navbar.jsp" %>	
              <div class="container">    
              <h2 class="mt-3">Search By Employee Name</h2>                  
                      <form method="post" action="searchemployee" class="bg-white search-form"> 
                                
                                <div class="row mt-3">
                                        <div class="col-sm-2">
                                            <label for="emp-name" class="mt-4 ml-3">Name Of Employee</label>
                                        </div>
                                         <div class="col-sm-4">
                                             <input type="text" name="emp-name" id="emp-name" class="form-control mt-4">
                                        </div>
                                         <div class="col-sm-6">
                                             <input type="submit" name="" class="btn btn-info btn-add mt-4" value="Search">
                                        </div>                              
                                </div>   
                       </form>
                       
               <div class="card mt-4"id="">
                       <div class="container">
                        <h2 class="mt-4">Details Of Employee</h2>
                         
                         <table border="2px" class="table  mt-3 table-responsive-sm table-responsive-lg">
                                      <thead>
                                      <tr class="bg-info text-white">
                                            <th>Emp. Id</th>
                                            <th>Name</th>
                                            <th>Mobile</th>
                                            <th>Address</th>
                                            <th>Post</th>
                                            <th>Joining Date</th>
                                            <th>Leaving Date</th>
                                            <th>Emp. Status</th>
                                            <th>Action</th>
                                         </tr>
                                      </thead>
                                      <tbody>
                                         <%
                                Connection con=MyConnection.getMyConnection();
                                 try
                                { 
                                	   Statement stmt=con.createStatement();
                                       String query="select * from employee_info;";
                                       ResultSet rs=stmt.executeQuery(query);
                                     
                               	   while(rs.next())
                               	   {
                               		  %>
                                         
                                             <tr>
                                                 <td><%=rs.getInt("emp_id") %></td>
                                                 <td><%=rs.getString("emp_name") %></td> 
                                                 <td><%=rs.getString("emp_mobile") %></td> 
                                                 <td><%=rs.getString("emp_address") %></td> 
                                                 <td><%=rs.getString("emp_post") %></td> 
                                                 <td><%=rs.getString("emp_joining") %></td> 
                                                 <td><%=rs.getString("emp_leaving") %></td> 
                                                 <td class="" style="text-transform:capitalize"><%=rs.getString("emp_status") %></td> 
                                                 <td><a href="updateemployee.jsp?emp_id=<%=rs.getString("emp_id") %>">Update</a> </td>
                                             </tr>
                                                
                               		 <%
                               	   }
                               	 }
                                catch(Exception e)
                                {
                                	
                                }
                                 
                                %>
                                      </tbody>
                           </table>
                       </div>
                   
               </div>  
                    
                   
              </div>
	   	      
</div>    
 </div>

</body>
</html>