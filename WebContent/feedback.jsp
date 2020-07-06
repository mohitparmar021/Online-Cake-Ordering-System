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
	 </style>
</head>
<body>

<div class="container">
	 <div class=" main-card ">
   <%@ include file="views/admin-navbar.jsp" %>	
              <div class="container">
                     <h4 class="mt-3 ml-2">Feedback</h4>
                      <%
                             
                                 try
                              {
                                	 Connection con=null;
                                	 ResultSet rs=null;
                                     con=MyConnection.getMyConnection();
                                     Statement stmt=con.createStatement();
                                     String query="select *  from feedback;";
                                     rs=stmt.executeQuery(query);
                                      
                                     while(rs.next())
                                     {
                                    	 %>           	
                                          <div class="card mt-3">
                                             <div class="card-body">
                                                <label>Name : </label> <span><%=rs.getString(1) %></span><br>
                                                <label>E-mail : </label> <span><%=rs.getString(2) %></span><br>
                                                <label>Message : </label><span><%=rs.getString(3) %></span>                              
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
	   	      
</div>    
 </div>

</body>
</html>