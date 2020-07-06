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
<title>Update Profile</title>
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
             height:600px;
             padding-bottom: 61px;
	 	}
	 	.btn-update
	 	{
	 	  border-radius:0px;
	 	}
	 	
	 </style>
</head>
<body>
<div class="container">
	 <div class=" main-card ">
   <%@ include file="views/admin-navbar.jsp" %>	
             <div class="container">
                 <h2 class="mt-3">Update Profile</h2>
                 
                 <form action="updateprofile" method="post">
                    <%
                             
                                 try
                              {
                                	Connection con=null;
                                     con=MyConnection.getMyConnection();
                                     Statement stmt=con.createStatement();
                                     String query="select *  from login;";
                                     ResultSet rs=stmt.executeQuery(query);
                                      
                                     while(rs.next())
                                     {
                                    	 %>
                                    	 
                      <div class="row mt-5">
                             <div class="col-sm-2">
                                     <label for="id">User Id</label>
                              </div>
                               <div class="col-sm-4">       
                                     <input type="number" readonly  value="<%=rs.getInt(1) %>" name="id" id="id" class="form-control bg-white">     
                              </div>
                       
                               <div class="col-sm-2">
                                      <label for="username">Username</label>
                                </div>
                               <div class="col-sm-4">   
                                      <input type="text" value="<%=rs.getString(2) %>" name="username" id="username" class="form-control">
                               </div>             
                      </div>
                        <div class="row mt-4">
                             <div class="col-sm-2">
                                     <label for="name">Name</label>
                              </div>
                               <div class="col-sm-4">       
                                    <input type="text" name="name" value="<%=rs.getString(4)%>" id="name" class="form-control">  
                              </div>
                       
                               <div class="col-sm-2">
                                     <label for="emailid">Email</label>
                                </div>
                               <div class="col-sm-4">   
                                   <input type="email" value="<%=rs.getString(7) %>" name="emailid" id="emailid" class="form-control">    
                               </div>             
                      </div>
                          <div class="row mt-4">
                           <div class="col-sm-2">
                                   <label for="add">Address</label>
                              </div>
                               <div class="col-sm-4">       
                                  <input type="text" name="add" value="<%=rs.getString(6) %>" id="add" class="form-control">     
                              </div>
                       
                               <div class="col-sm-2">
                                     <label for="mobile">Mobile Number</label>
                                </div>
                               <div class="col-sm-4">   
                                  <input type="text" name="mobile" value="<%=rs.getString(5) %>" id="mobile" class="form-control">   
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
                       <input type="submit" class="btn btn-update btn-info mt-4" value="Update Profile">
                 </form>
                 
             </div>
      </div> 
 </div>           
</body>
</html>