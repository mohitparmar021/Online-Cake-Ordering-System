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
<title>Profile</title>
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
	 	 .update-btn
	 	 {
	 	 background-color: #e9ecef;
	 	 }
	 </style>
</head>
<body>

<div class="container">
	 <div class=" main-card ">
   <%@ include file="views/admin-navbar.jsp" %>	
             <div class="container">
                   <h4 class="mt-3">Profile</h4>  
                    
                    <table class="table-responsive-lg table-striped mt-5" cellpadding="10px" style="width:100%">
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
                                    	 <tr>
                                                  <td class="font-weight-bold">Id Number</td>
                                                  <td class="font-weight-bold">:</td>
                                                  <td><%=rs.getString("id") %></td> 
                                             </tr>
                                            <tr>
                                                  <td class="font-weight-bold">Name </td>
                                                   <td class="font-weight-bold">:</td>
                                                  <td><%=rs.getString("name") %></td>
                                             </tr>
                                             <tr>
                                                  <td class="font-weight-bold">Username </td>
                                                   <td class="font-weight-bold">:</td>
                                                  <td><%=rs.getString("username") %></td>
                                             </tr>
                                             <tr>
                                                  <td class="font-weight-bold">Mobile Number </td>
                                                   <td class="font-weight-bold">:</td>
                                                  <td><%=rs.getLong("mobile") %></td>
                                             </tr>
                                              <tr>
                                                  <td class="font-weight-bold">Email Id</td>
                                                   <td class="font-weight-bold">:</td>
                                                  <td> <%=rs.getString("email") %></td>
                                             </tr>
                                             <tr>
                                                  <td class="font-weight-bold">Address</td>
                                                   <td class="font-weight-bold">:</td>
                                                  <td> <%=rs.getString("address") %></td>
                                             </tr>
                                             <tr >
                                             <td class="update-btn"> <a class="btn btn-info" href="updateprofile.jsp?userid=<%=rs.getString("id") %>">Update Profile</a>
                                             </td>
                                                </tr>
                                                
                                              
                                    	 <%
                                     }
                              }
                              catch(Exception e)
                              {
                            	  System.out.print(e);
                              }
                                  %>           
                                          
                                      </table>
                          
                    
              </div>
	   	      
</div>    
 </div>

</body>
</html>