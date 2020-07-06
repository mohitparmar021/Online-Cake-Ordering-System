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
<title>Add New Category</title>
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
          padding-bottom: 70px;
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
          
       .btn-add
       {
          width: 20%;
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
                          
                           <form action="addnewcategory" method="post">
                                <h2 class="mt-3">Add New Category</h2>
                                 <div class="form-group">
                                       <label for="cake-category" class="mt-3">Cake Category</label>
                                       <input type="text" required name="cake-category" id="cake-category" class="form-control">
                                 </div>
                                  <input type="submit"  name="" class="btn btn-info btn-lg btn-add" value="Add">
                           </form>

                   <div class="card mb-3 mt-4">
                       <div class="card-body">     
                           <h4 >Manage Category</h4><br>

                           <table class="table-responsive-lg table-striped" cellpadding="10px" style="width:100%" border="1px">
                           <thead>
                                 <tr class="bg-info text-white"> 
                                      <th>Sr. Number</th>
                                      <th>Cake Category</th>
                                      <th>Action</th>
                                 </tr>
                            </thead>
                            <tbody>
                             <%
                             
                                 try
                              {
                                	 Connection con=null;
                                     con=MyConnection.getMyConnection();
                                     Statement stmt=con.createStatement();
                                     String query="select *  from add_new_category;";
                                     ResultSet rs=stmt.executeQuery(query);
                                      
                                     while(rs.next())
                                     {
                                    	 %>
                                    	 <tr>
                                              <td><%=rs.getInt(1) %></td>
                                              <td><%=rs.getString(2) %></td>
                                              <td><a href="deletecategory.jsp?id=<%=rs.getInt(1) %>">Delete</a></td>
                                          </tr>
                                    	 <%
                                     }
                              }
                              catch(Exception e)
                              {
                            	  System.out.print(e);
                              }
                           
                            
                              %>
                                 
                            </tbody>
                             
                         </table>
                    
                     </div>
                  </div>
                     
              
             </div>
	   	       	  
	   	       </div>

	 </div>

</div>    

</body>
</html>